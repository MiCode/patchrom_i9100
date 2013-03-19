.class final Lcom/android/settings/guide/WifiSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/WifiSettingsGuider$7;,
        Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private mConnecting:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mEmptyScanResultAttempts:I

.field private mEnableScanMenuItem:Z

.field private mFirstStart:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 73
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 74
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 78
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 80
    iput v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 82
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 83
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 96
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 106
    invoke-static {v1, p1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 108
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 117
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 124
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, bubbleView:Landroid/view/View;
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 463
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 465
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 467
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 470
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 471
    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    :cond_0
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .parameter "type"

    .prologue
    .line 387
    const/4 v0, -0x1

    .line 388
    .local v0, layout:I
    const/4 v1, -0x1

    .line 390
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-nez v2, :cond_0

    .line 450
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 396
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 449
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 398
    :pswitch_0
    const v1, 0x7f090d72

    .line 399
    const v0, 0x7f04006a

    .line 400
    goto :goto_1

    .line 402
    :pswitch_1
    const v1, 0x7f090d75

    .line 403
    const v0, 0x7f04006e

    .line 404
    goto :goto_1

    .line 406
    :pswitch_2
    const v1, 0x7f090d74

    .line 407
    const v0, 0x7f04006e

    .line 408
    goto :goto_1

    .line 410
    :pswitch_3
    const v1, 0x7f090d73

    .line 411
    const v0, 0x7f04006e

    .line 412
    goto :goto_1

    .line 414
    :pswitch_4
    const v1, 0x7f090d77

    .line 415
    const v0, 0x7f04006b

    .line 416
    goto :goto_1

    .line 418
    :pswitch_5
    const v1, 0x7f090d76

    .line 419
    const v0, 0x7f04006e

    .line 420
    goto :goto_1

    .line 422
    :pswitch_6
    const v1, 0x7f090d71

    .line 423
    const v0, 0x7f040069

    .line 427
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 431
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private restoreSecurityDialogFocus()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 754
    iget-object v8, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    move-object v6, v8

    .line 756
    .local v6, securityDialog:Landroid/app/AlertDialog;
    :goto_0
    if-eqz v6, :cond_4

    .line 757
    const v8, 0x7f0b035b

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 758
    .local v0, identity:Landroid/view/View;
    const v8, 0x7f0b0373

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 759
    .local v1, identityContainer:Landroid/view/View;
    move-object v7, v0

    .line 760
    .local v7, viewToFocus:Landroid/view/View;
    const/4 v4, 0x0

    .line 762
    .local v4, isSingleEdit:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 765
    :cond_0
    const v8, 0x7f0b02e8

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 766
    const/4 v4, 0x1

    .line 769
    :cond_1
    if-eqz v7, :cond_3

    .line 771
    if-eqz v4, :cond_2

    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    move-object v8, v7

    .line 772
    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getImeOptions()I

    move-result v2

    .local v2, imeOptions:I
    move-object v8, v7

    .line 774
    check-cast v8, Landroid/widget/EditText;

    or-int/lit8 v10, v2, 0x6

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 777
    .end local v2           #imeOptions:I
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 779
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "input_method"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 782
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 787
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const/4 v8, -0x2

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 789
    .local v5, negativeButton:Landroid/widget/Button;
    if-eqz v5, :cond_4

    .line 790
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 794
    .end local v0           #identity:Landroid/view/View;
    .end local v1           #identityContainer:Landroid/view/View;
    .end local v4           #isSingleEdit:Z
    .end local v5           #negativeButton:Landroid/widget/Button;
    .end local v7           #viewToFocus:Landroid/view/View;
    :cond_4
    iput-object v9, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 795
    return-void

    .end local v6           #securityDialog:Landroid/app/AlertDialog;
    :cond_5
    move-object v6, v9

    .line 754
    goto :goto_0
.end method

.method private setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 916
    .local v1, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 918
    :pswitch_0
    if-eqz v1, :cond_0

    .line 919
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 921
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 924
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 925
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 916
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 613
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 615
    .local v0, ab:Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 618
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 619
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 620
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 621
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 624
    :cond_0
    if-eqz p1, :cond_1

    .line 625
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 629
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 613
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanOptionEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 639
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 643
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 646
    :cond_0
    return-void
.end method

.method private showHelpDialog(IILcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2
    .parameter "resID"
    .parameter "layout"
    .parameter "touchTransparency"
    .parameter "type"
    .parameter "needShowWrongToast"

    .prologue
    .line 375
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 376
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0, p3}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0, p5}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->show()V

    .line 383
    iput-object p4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 384
    return-void
.end method


# virtual methods
.method protected dismissAndRestorePreviousHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_2

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 368
    :cond_2
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->dismiss()V

    .line 297
    iput-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 299
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 316
    :goto_0
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 317
    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 319
    :cond_0
    return-void

    .line 301
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 302
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 305
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 308
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->restoreSecurityDialogFocus()V

    .line 309
    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 328
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 348
    :cond_0
    return-void

    .line 330
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 331
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 334
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 485
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 491
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 496
    :cond_0
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 499
    .local v2, network:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 503
    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    if-lt v4, v7, :cond_3

    .line 504
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 569
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 506
    .restart local v2       #network:Landroid/net/NetworkInfo;
    :cond_3
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 509
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_5

    .line 510
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 511
    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_2

    .line 512
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 515
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_6

    .line 516
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 517
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 518
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 520
    :cond_6
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 521
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    goto :goto_0

    .line 525
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_7
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 526
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 529
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-eqz v4, :cond_8

    .line 530
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 531
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 532
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-nez v4, :cond_9

    .line 533
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 534
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 535
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 536
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 539
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_2

    .line 543
    :cond_a
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 545
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 547
    :cond_b
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 552
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_c
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 556
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 561
    .local v3, state:I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    if-eq v3, v7, :cond_d

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 564
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 566
    :cond_d
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0
.end method

.method public isWifiDialogSecured(Landroid/app/AlertDialog;)Z
    .locals 3
    .parameter "dialog"

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, result:Z
    const v2, 0x7f0b0351

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 658
    .local v1, view:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 659
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 164
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 721
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 725
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 134
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 137
    iput v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 138
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->finish()V

    .line 146
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 713
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 714
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissAndRestorePreviousHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 717
    :cond_0
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 809
    const/4 v1, 0x0

    .line 810
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 814
    .local v2, passToView:Z
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 891
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 892
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 894
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 895
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 896
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 903
    .end local v0           #focus:Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 817
    :pswitch_0
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x75

    if-eq p1, v3, :cond_2

    const/16 v3, 0x76

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_2

    .line 832
    const/4 v1, 0x1

    goto :goto_0

    .line 833
    :cond_2
    if-ne p1, v5, :cond_0

    .line 834
    const/4 v2, 0x0

    .line 835
    const/4 v1, 0x1

    .line 837
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto :goto_0

    .line 843
    :pswitch_1
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 846
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 848
    :cond_3
    const/4 v2, 0x0

    .line 849
    const/4 v1, 0x1

    .line 850
    goto :goto_0

    .line 853
    :pswitch_2
    const/4 v2, 0x0

    .line 854
    const/4 v1, 0x1

    .line 855
    goto :goto_0

    .line 860
    :pswitch_3
    if-ne p1, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 864
    const/4 v2, 0x0

    .line 865
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 867
    :cond_4
    if-ne p1, v5, :cond_0

    .line 868
    const/4 v2, 0x0

    .line 869
    const/4 v1, 0x1

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto/16 :goto_0

    .line 878
    :pswitch_4
    if-ne p1, v5, :cond_0

    .line 879
    const/4 v2, 0x0

    .line 880
    const/4 v1, 0x1

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto/16 :goto_0

    .line 898
    .restart local v0       #focus:Landroid/view/View;
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialogInterface"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 733
    const/4 v0, 0x0

    .line 735
    .local v0, retval:Z
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2

    .line 737
    const/16 v1, 0x6f

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 743
    :cond_1
    const/4 v0, 0x1

    .line 746
    :cond_2
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 800
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 802
    iget v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 803
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 805
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 168
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, scan:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 171
    iget-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 173
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 159
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 151
    goto :goto_0

    :cond_2
    move v1, v2

    .line 152
    goto :goto_1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x1

    .line 686
    instance-of v2, p1, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 688
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 690
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 694
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 696
    .local v1, negativeButton:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 697
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 698
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 702
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 705
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #negativeButton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .locals 1
    .parameter "enabler"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    .line 672
    :cond_0
    return-void
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    .line 573
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 576
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d79

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090d78

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 594
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 8
    .parameter "type"

    .prologue
    const v2, 0x7f04006e

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 194
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_1

    move v0, v7

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_2

    .line 291
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v5

    .line 194
    goto :goto_0

    .line 200
    :cond_2
    iget-object v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 202
    .local v6, showedType:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 203
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 207
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 247
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_4

    move v0, v7

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 249
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 251
    :pswitch_0
    const v1, 0x7f090d72

    const v2, 0x7f04006a

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 209
    :pswitch_1
    iput-object v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto :goto_2

    .line 215
    :pswitch_2
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 225
    :pswitch_3
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 235
    :pswitch_4
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_4

    :cond_4
    move v0, v5

    .line 247
    goto :goto_3

    .line 256
    :pswitch_5
    const v1, 0x7f090d75

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 260
    :pswitch_6
    const v1, 0x7f090d74

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 264
    :pswitch_7
    const v1, 0x7f090d73

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 268
    :pswitch_8
    const v1, 0x7f090d77

    const v2, 0x7f04006b

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 272
    :pswitch_9
    const v1, 0x7f090d76

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 276
    :pswitch_a
    const v1, 0x7f090d71

    const v2, 0x7f040069

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 249
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method
