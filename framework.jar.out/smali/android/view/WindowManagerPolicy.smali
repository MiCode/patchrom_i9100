.class public interface abstract Landroid/view/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;,
        Landroid/view/WindowManagerPolicy$ScreenOnListener;,
        Landroid/view/WindowManagerPolicy$WindowManagerFuncs;,
        Landroid/view/WindowManagerPolicy$FakeWindow;,
        Landroid/view/WindowManagerPolicy$WindowState;,
        Landroid/view/WindowManagerPolicy$WindowModeHelper;
    }
.end annotation


# static fields
.field public static final ACTION_GO_TO_SLEEP:I = 0x4

.field public static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final ACTION_POKE_USER_ACTIVITY:I = 0x2

.field public static final EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final FLAG_ALT:I = 0x10

.field public static final FLAG_ALT_GR:I = 0x20

.field public static final FLAG_BRIGHT_HERE:I = 0x20000000

.field public static final FLAG_CAPS_LOCK:I = 0x8

.field public static final FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final FLAG_FILTERED:I = 0x4000000

.field public static final FLAG_INJECTED:I = 0x1000000

.field public static final FLAG_LAUNCHER:I = 0x80

.field public static final FLAG_MENU:I = 0x40

.field public static final FLAG_PASS_TO_USER:I = 0x40000000

.field public static final FLAG_SHIFT:I = 0x4

.field public static final FLAG_TRUSTED:I = 0x2000000

.field public static final FLAG_VIRTUAL:I = 0x100

.field public static final FLAG_WAKE:I = 0x1

.field public static final FLAG_WAKE_DROPPED:I = 0x2

.field public static final FLAG_WOKE_HERE:I = 0x10000000

.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final OFF_BECAUSE_OF_FAKEOFF:I = 0x5

.field public static final OFF_BECAUSE_OF_PROX_SENSOR:I = 0x4

.field public static final OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final OFF_BECAUSE_OF_USER:I = 0x2

.field public static final PRESENCE_EXTERNAL:I = 0x2

.field public static final PRESENCE_INTERNAL:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2007

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1006

.field public static final TRANSIT_ENTER:I = 0x1001

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT:I = 0x2002

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_HIDE:I = 0x2004

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x1003

.field public static final TRANSIT_TASK_CLOSE:I = 0x2009

.field public static final TRANSIT_TASK_OPEN:I = 0x1008

.field public static final TRANSIT_TASK_TO_BACK:I = 0x200b

.field public static final TRANSIT_TASK_TO_FRONT:I = 0x100a

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0x200c

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0x200f

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0x100e

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0x100d

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1

.field public static final WATCH_POINTER:Z = false

.field public static final WINDOW_INFO_NOTHING_CHANGED:I = 0x0

.field public static final WINDOW_INFO_SIZE_CHANGED:I = 0x1

.field public static final WINDOW_MODE_FREESTYLE:I = 0x2000000

.field public static final WINDOW_MODE_MASK:I = -0x1000000

.field public static final WINDOW_MODE_NORMAL:I = 0x1000000

.field public static final WINDOW_MODE_OPTION_COMMON_FIXED_RATIO:I = 0x8000

.field public static final WINDOW_MODE_OPTION_COMMON_FIXED_SIZE:I = 0x20000

.field public static final WINDOW_MODE_OPTION_COMMON_FORCE_TITLE_BAR:I = 0x2000

.field public static final WINDOW_MODE_OPTION_COMMON_FULL_SIZE:I = 0x4000

.field public static final WINDOW_MODE_OPTION_COMMON_HIDDEN:I = 0x80000

.field public static final WINDOW_MODE_OPTION_COMMON_INHERIT:I = 0x400000

.field public static final WINDOW_MODE_OPTION_COMMON_MASK:I = 0xffff00

.field public static final WINDOW_MODE_OPTION_COMMON_MINIMIZED:I = 0x100000

.field public static final WINDOW_MODE_OPTION_COMMON_NO_ARRANGE:I = 0x40000

.field public static final WINDOW_MODE_OPTION_COMMON_NO_CONTROLBAR:I = 0x10000

.field public static final WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_NEXT:I = 0x1000

.field public static final WINDOW_MODE_OPTION_COMMON_OPTION_ZONE_SAME:I = 0x800

.field public static final WINDOW_MODE_OPTION_COMMON_PINUP:I = 0x800000

.field public static final WINDOW_MODE_OPTION_COMMON_RESIZE:I = 0x200000

.field public static final WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK:I = 0x23e000

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_A:I = 0x6

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_B:I = 0x18

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_C:I = 0x2

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_D:I = 0x4

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_E:I = 0x8

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_F:I = 0x10

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_FULL:I = 0x1e

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I = 0xff

.field public static final WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I = 0x0

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_DONTCARE:I = 0x0

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_MASK:I = 0x1800

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_MASK_SHIFT:I = 0xb

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_NEXT:I = 0x2

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_RESERVED:I = 0x3

.field public static final WINDOW_MODE_OPTION_ZONE_POLICY_SAME:I = 0x1

.field public static final WINDOW_MODE_SHIFT:I = 0x18

.field public static final WINDOW_STYLE_ACTIVITY_FORCE_TITLE_BAR:Ljava/lang/String; = "forceTitleBar"

.field public static final WINDOW_STYLE_FIXED_RATIO:Ljava/lang/String; = "fixedRatio"

.field public static final WINDOW_STYLE_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field public static final WINDOW_STYLE_FULL_SIZE:Ljava/lang/String; = "fullSize"

.field public static final WINDOW_STYLE_NO_TITLE_BAR:Ljava/lang/String; = "noTitleBar"


# virtual methods
.method public abstract addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract adjustSystemUiVisibilityLw(I)I
.end method

.method public abstract adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract allowAppAnimationsLw()Z
.end method

.method public abstract allowKeyRepeat()Z
.end method

.method public abstract animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract beginAnimationLw(II)V
.end method

.method public abstract beginLayoutLw(III)V
.end method

.method public abstract canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract closeMultiWindowTrayBar()V
.end method

.method public abstract createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw()V
.end method

.method public abstract dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishAnimationLw()I
.end method

.method public abstract finishLayoutLw()V
.end method

.method public abstract focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract getConfigDisplayHeight(III)I
.end method

.method public abstract getConfigDisplayWidth(III)I
.end method

.method public abstract getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public abstract getNonDecorDisplayHeight(III)I
.end method

.method public abstract getNonDecorDisplayWidth(III)I
.end method

.method public abstract getSystemDecorRectLw(Landroid/graphics/Rect;)I
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hasSystemNavBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public abstract interceptMotionBeforeQueueingWhenScreenOff(I)I
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardReady()Z
.end method

.method public abstract isKeyguardSecure()Z
.end method

.method public abstract isNavigationBarVisible()Z
.end method

.method public abstract isScreenOnEarly()Z
.end method

.method public abstract isScreenOnFully()Z
.end method

.method public abstract isScreenSaverEnabled()Z
.end method

.method public abstract isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
.end method

.method public abstract layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract lockNow()V
.end method

.method public abstract mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract notifyPenSwitchChanged(JZ)V
.end method

.method public abstract performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
.end method

.method public abstract rotationForOrientationLw(II)I
.end method

.method public abstract rotationHasCompatibleMetricsLw(II)Z
.end method

.method public abstract screenOnStartedLw()V
.end method

.method public abstract screenOnStoppedLw()V
.end method

.method public abstract screenTurnedOff(I)V
.end method

.method public abstract screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setCurrentOrientationLw(I)V
.end method

.method public abstract setInitialDisplaySize(Landroid/view/Display;II)V
.end method

.method public abstract setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setRotationLw(I)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setUserRotationMode(II)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract startScreenSaver()Z
.end method

.method public abstract stopScreenSaver()V
.end method

.method public abstract subWindowTypeToLayerLw(I)I
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract updateTopActivity(Landroid/content/ComponentName;)V
.end method

.method public abstract userActivity()V
.end method

.method public abstract windowTypeToLayerLw(I)I
.end method
