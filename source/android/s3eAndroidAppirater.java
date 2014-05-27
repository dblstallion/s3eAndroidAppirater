/*
java implementation of the s3eAndroidAppirater extension.

Add android-specific functionality here.

These functions are called via JNI from native code.
*/
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
import com.ideaworks3d.marmalade.LoaderAPI;
import com.ideaworks3d.marmalade.LoaderActivity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;

class s3eAndroidAppirater
{
	private String sAppName;
    private String sTitle;
	private String message;
	private String yesText;
	private String laterText;
	private String noText;
	
	private static int iDays_till_prompt = 5;
    private static int iLaunches_till_prompt = 5;
    private static int iEvents_till_prompt = 21;
	private Context mContext;
	
    public int AppiraterInit(String cTitle, String cAppName, int iDays, int iLaunches, int iEvents, String message, String yesText, String laterText, String noText)
    {
        sTitle = cTitle;		
		sAppName = cAppName;
		iDays_till_prompt = iDays;
		iLaunches_till_prompt = iLaunches;
		iEvents_till_prompt = iEvents;
		
        this.message = message;
        this.yesText = yesText;
        this.laterText = laterText;
        this.noText = noText;
		
        //We are currently in the Application thread,
        //enqueue the call to showMessage on the UI thread
        LoaderActivity.m_Activity.runOnUiThread(m_ShowMessage);
		
        return 0;
    }

    private final Runnable m_ShowMessage = new Runnable()
    {
        public void run()
        {
			mContext = LoaderAPI.getActivity();
			SharedPreferences prefs = mContext.getSharedPreferences("apprater", 0);
			if (prefs.getBoolean("dontshowagain", false)) { return ; }
			
			SharedPreferences.Editor editor = prefs.edit();
			
			// Increment launch counter
			long launch_count = prefs.getLong("launch_count", 0) + 1;
			editor.putLong("launch_count", launch_count);

			// Get date of first launch
			Long date_firstLaunch = prefs.getLong("date_firstlaunch", 0);
			if (date_firstLaunch == 0) {
				date_firstLaunch = System.currentTimeMillis();
				editor.putLong("date_firstlaunch", date_firstLaunch);
			}
			
			tryShowMessage(editor);

			editor.commit();
			
        }
    };

    public int AppiraterEventOccured()
    {
		LoaderActivity.m_Activity.runOnUiThread(m_EventOccured);
        return 0;
    }

	private final Runnable m_EventOccured = new Runnable()
    {
        public void run()
        {
			mContext = LoaderAPI.getActivity();
			SharedPreferences prefs = mContext.getSharedPreferences("apprater", 0);
			if (prefs.getBoolean("dontshowagain", false)) { return ; }
			
			SharedPreferences.Editor editor = prefs.edit();
			
			// Increment event counter
			long event_count = prefs.getLong("event_count", 0) + 1;
			editor.putLong("event_count", event_count);
			
			tryShowMessage(editor);

			editor.commit();
        }
    };

	private void tryShowMessage(final SharedPreferences.Editor editor)
	{
		SharedPreferences prefs = mContext.getSharedPreferences("apprater", 0);
		long launch_count = prefs.getLong("launch_count", 0);
		Long date_firstLaunch = prefs.getLong("date_firstlaunch", 0);
		long event_count = prefs.getLong("event_count", 0);
			
		if ((launch_count >= iLaunches_till_prompt) &&
			(System.currentTimeMillis() >= date_firstLaunch + (iDays_till_prompt * 24 * 60 * 60 * 1000)) &&
			(event_count >= iEvents_till_prompt))
		{
			showMessage(editor);
		}
	}
	
    private void showMessage(final SharedPreferences.Editor editor)
    {
        final Dialog dialog = new Dialog(mContext);
        dialog.setTitle(sTitle);

        LinearLayout ll = new LinearLayout(mContext);
        ll.setOrientation(LinearLayout.VERTICAL);
		ll.setPadding(20, 20, 20, 20);
        
        TextView tv = new TextView(mContext);
        tv.setText(message);
        tv.setWidth(400);
        tv.setPadding(10, 0, 10, 20);
        ll.addView(tv);
        		
        Button b1 = new Button(mContext);
        b1.setText(yesText);
        b1.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                mContext.startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=" + sAppName)));
                if (editor != null) {
                    editor.putBoolean("dontshowagain", true);
                    editor.commit();
                }
                dialog.dismiss();
            }
        });
        ll.addView(b1);

        Button b2 = new Button(mContext);
        b2.setText(laterText);
        b2.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
				editor.putLong("event_count", 0);
                dialog.dismiss();
            }
        });
        ll.addView(b2);

        Button b3 = new Button(mContext);
        b3.setText(noText);
        b3.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (editor != null) {
                    editor.putBoolean("dontshowagain", true);
                    editor.commit();
                }
                dialog.dismiss();
            }
        });
        ll.addView(b3);
		
        dialog.setContentView(ll);        
        dialog.show();        
    }

}
