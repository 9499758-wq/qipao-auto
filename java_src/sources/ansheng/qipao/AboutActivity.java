package ansheng.qipao;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes4.dex */
public class AboutActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        int statusBarHeight = 0;
        int navBarHeight = 0;
        int statusBarId = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (statusBarId > 0) {
            statusBarHeight = getResources().getDimensionPixelSize(statusBarId);
        }
        int navBarId = getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (navBarId > 0) {
            navBarHeight = getResources().getDimensionPixelSize(navBarId);
        }
        linearLayout.setPadding(dp(20), dp(20) + statusBarHeight, dp(20), dp(20) + navBarHeight);
        linearLayout.setBackgroundColor(Color.parseColor("#F6F5FA"));
        LinearLayout header = new LinearLayout(this);
        header.setOrientation(1);
        header.setGravity(17);
        header.setPadding(dp(32), dp(32), dp(32), dp(32));
        GradientDrawable headerBg = new GradientDrawable();
        headerBg.setColor(Color.parseColor("#6C5CBA"));
        headerBg.setCornerRadius(dp(24));
        header.setBackground(headerBg);
        header.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        TextView title = new TextView(this);
        title.setText("关于气泡自动化");
        title.setTextSize(24.0f);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(-1);
        header.addView(title, new LinearLayout.LayoutParams(-2, -2));
        TextView sub = new TextView(this);
        sub.setText("高效 · 简洁 · 自动化");
        sub.setTextSize(14.0f);
        sub.setTextColor(Color.parseColor("#C9BCF0"));
        sub.setGravity(17);
        sub.setPadding(0, dp(12), 0, 0);
        header.addView(sub, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(header);
        linearLayout.addView(createCard("作者", "何老师"));
        linearLayout.addView(createCard("核心特色", "何老师专版：全自动领时长、智能跳过直播挽留、全机型适配"));
        linearLayout.addView(createCard("使用体验", "纯净无后门，运行流畅稳定，专属定制。"));
        linearLayout.addView(createHighlightCard("免责声明", "本软件仅供学习Android无障碍开发技术使用\n请于学习后24小时内自行删除\n禁止用于任何商业用途及非法破坏平台生态"));
        setContentView(linearLayout);
    }

    private LinearLayout createCard(String titleText, String contentText) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(1);
        card.setPadding(dp(24), dp(24), dp(24), dp(24));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(-1);
        bg.setCornerRadius(dp(20));
        card.setBackground(bg);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, -2);
        params.setMargins(0, dp(16), 0, 0);
        card.setLayoutParams(params);
        TextView title = new TextView(this);
        title.setText(titleText);
        title.setTextSize(18.0f);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.parseColor("#1D1B20"));
        title.setGravity(17);
        card.addView(title, new LinearLayout.LayoutParams(-1, -2));
        TextView content = new TextView(this);
        content.setText(contentText);
        content.setTextSize(15.0f);
        content.setTextColor(Color.parseColor("#49454F"));
        content.setGravity(17);
        content.setPadding(0, dp(12), 0, 0);
        content.setLineSpacing(1.4f, 1.4f);
        card.addView(content, new LinearLayout.LayoutParams(-1, -2));
        return card;
    }

    private LinearLayout createHighlightCard(String titleText, String contentText) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(1);
        card.setPadding(dp(24), dp(24), dp(24), dp(24));
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.parseColor("#FFF0F0"));
        bg.setCornerRadius(dp(20));
        bg.setStroke(dp(1), Color.parseColor("#E57373"));
        card.setBackground(bg);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-1, -2);
        params.setMargins(0, dp(16), 0, 0);
        card.setLayoutParams(params);
        TextView title = new TextView(this);
        title.setText(titleText);
        title.setTextSize(19.0f);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.parseColor("#D32F2F"));
        title.setGravity(17);
        card.addView(title, new LinearLayout.LayoutParams(-1, -2));
        TextView content = new TextView(this);
        content.setText(contentText);
        content.setTextSize(15.0f);
        content.setTypeface(Typeface.DEFAULT_BOLD);
        content.setTextColor(Color.parseColor("#C62828"));
        content.setGravity(17);
        content.setPadding(0, dp(14), 0, 0);
        content.setLineSpacing(1.5f, 1.5f);
        card.addView(content, new LinearLayout.LayoutParams(-1, -2));
        return card;
    }

    private int dp(int value) {
        return (int) ((value * getResources().getDisplayMetrics().density) + 0.5f);
    }
}
