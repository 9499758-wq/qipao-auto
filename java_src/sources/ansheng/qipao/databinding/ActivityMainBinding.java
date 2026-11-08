package ansheng.qipao.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Switch;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import ansheng.qipao.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityMainBinding implements ViewBinding {
    public final Button btnBatteryOptimization;
    public final Button btnLaunchMusic;
    public final Button btnOpenAccessibility;
    public final Button btnStopService;
    public final Button btnViewLogs;
    private final LinearLayout rootView;
    public final Switch switchFloatWindow;
    public final Toolbar toolbar;

    private ActivityMainBinding(LinearLayout rootView, Button btnBatteryOptimization, Button btnLaunchMusic, Button btnOpenAccessibility, Button btnStopService, Button btnViewLogs, Switch switchFloatWindow, Toolbar toolbar) {
        this.rootView = rootView;
        this.btnBatteryOptimization = btnBatteryOptimization;
        this.btnLaunchMusic = btnLaunchMusic;
        this.btnOpenAccessibility = btnOpenAccessibility;
        this.btnStopService = btnStopService;
        this.btnViewLogs = btnViewLogs;
        this.switchFloatWindow = switchFloatWindow;
        this.toolbar = toolbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMainBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityMainBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View root = inflater.inflate(R.layout.activity_main, parent, false);
        if (attachToParent) {
            parent.addView(root);
        }
        return bind(root);
    }

    public static ActivityMainBinding bind(View rootView) {
        int id = R.id.btn_battery_optimization;
        Button btnBatteryOptimization = (Button) ViewBindings.findChildViewById(rootView, id);
        if (btnBatteryOptimization != null) {
            id = R.id.btn_launch_music;
            Button btnLaunchMusic = (Button) ViewBindings.findChildViewById(rootView, id);
            if (btnLaunchMusic != null) {
                id = R.id.btn_open_accessibility;
                Button btnOpenAccessibility = (Button) ViewBindings.findChildViewById(rootView, id);
                if (btnOpenAccessibility != null) {
                    id = R.id.btn_stop_service;
                    Button btnStopService = (Button) ViewBindings.findChildViewById(rootView, id);
                    if (btnStopService != null) {
                        id = R.id.btn_view_logs;
                        Button btnViewLogs = (Button) ViewBindings.findChildViewById(rootView, id);
                        if (btnViewLogs != null) {
                            id = R.id.switch_float_window;
                            Switch switchFloatWindow = (Switch) ViewBindings.findChildViewById(rootView, id);
                            if (switchFloatWindow != null) {
                                id = R.id.toolbar;
                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(rootView, id);
                                if (toolbar != null) {
                                    return new ActivityMainBinding((LinearLayout) rootView, btnBatteryOptimization, btnLaunchMusic, btnOpenAccessibility, btnStopService, btnViewLogs, switchFloatWindow, toolbar);
                                }
                            }
                        }
                    }
                }
            }
        }
        String missingId = rootView.getResources().getResourceName(id);
        throw new NullPointerException("Missing required view with ID: ".concat(missingId));
    }
}
