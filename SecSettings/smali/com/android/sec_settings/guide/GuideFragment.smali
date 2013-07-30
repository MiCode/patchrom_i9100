.class public final Lcom/android/sec_settings/guide/GuideFragment;
.super Landroid/app/Fragment;
.source "GuideFragment.java"

# interfaces
.implements Lcom/android/sec_settings/guide/GuideFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/guide/GuideFragment$1;,
        Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;,
        Lcom/android/sec_settings/guide/GuideFragment$GuideModes;,
        Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;
    }
.end annotation


# static fields
.field private static sIsInGuideMode:Z


# instance fields
.field private mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

.field private mIsInGuideMode:Z

.field private mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

.field private mOpenedHeader:Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    .line 48
    sget-object v0, Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;

    iput-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;

    .line 410
    return-void
.end method

.method private static completeGuide(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 315
    return-void
.end method

.method public static deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 8
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const v6, 0x7f0b0007

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 257
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v4, "GuideFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/sec_settings/guide/GuideFragment;

    .line 261
    .local v2, frag:Lcom/android/sec_settings/guide/GuideFragment;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 263
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 265
    invoke-static {p0}, Lcom/android/sec_settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 267
    .local v3, layout:Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 268
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    :cond_0
    sput-boolean v5, Lcom/android/sec_settings/guide/GuideFragment;->sIsInGuideMode:Z

    .line 274
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    invoke-static {p0}, Lcom/android/sec_settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    .line 306
    .end local v3           #layout:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    if-nez v2, :cond_5

    .line 280
    invoke-static {p1}, Lcom/android/sec_settings/guide/GuideFragment;->newInstance(Landroid/content/Intent;)Lcom/android/sec_settings/guide/GuideFragment;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_4

    .line 284
    invoke-static {p0}, Lcom/android/sec_settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 286
    .restart local v3       #layout:Landroid/view/ViewGroup;
    if-eqz v3, :cond_3

    .line 287
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, container:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 290
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    .end local v0           #container:Landroid/widget/FrameLayout;
    :cond_3
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "GuideFragment"

    invoke-virtual {v4, v6, v2, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 296
    sput-boolean v7, Lcom/android/sec_settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0

    .line 298
    .end local v3           #layout:Landroid/view/ViewGroup;
    :cond_4
    sput-boolean v5, Lcom/android/sec_settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0

    .line 302
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/sec_settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/sec_settings/guide/GuideFragment$GuideModes;)V

    .line 303
    sput-boolean v7, Lcom/android/sec_settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0
.end method

.method public static findGuideFragment(Landroid/app/Activity;)Lcom/android/sec_settings/guide/GuideFragmentCallback;
    .locals 2
    .parameter "activity"

    .prologue
    .line 681
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/guide/GuideFragmentCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 3
    .parameter "activity"

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, retval:Landroid/view/ViewGroup;
    instance-of v2, p0, Landroid/app/ListActivity;

    if-eqz v2, :cond_0

    .line 346
    check-cast p0, Landroid/app/ListActivity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 348
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 349
    check-cast v1, Landroid/view/ViewGroup;

    .line 353
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-object v1
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFragment(Landroid/os/Bundle;Lcom/android/sec_settings/guide/GuideFragment$GuideModes;)V
    .locals 6
    .parameter "savedInstanceState"
    .parameter "mode"

    .prologue
    .line 458
    move-object v3, p2

    .line 460
    .local v3, newMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;
    if-nez v3, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/sec_settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, guideMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/sec_settings/guide/GuideModeHelper;->isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    .line 467
    .local v2, isInSettingsGuide:Z
    invoke-static {v1}, Lcom/android/sec_settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 468
    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    .line 474
    .end local v1           #guideMode:Ljava/lang/String;
    .end local v2           #isInSettingsGuide:Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 476
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_5

    .line 525
    :cond_1
    :goto_1
    return-void

    .line 468
    .end local v0           #activity:Landroid/app/Activity;
    .restart local v1       #guideMode:Ljava/lang/String;
    .restart local v2       #isInSettingsGuide:Z
    :cond_2
    sget-object v3, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    goto :goto_0

    .line 469
    :cond_3
    invoke-static {v1}, Lcom/android/sec_settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 470
    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    :goto_2
    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    goto :goto_2

    .line 480
    .end local v1           #guideMode:Ljava/lang/String;
    .end local v2           #isInSettingsGuide:Z
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_5
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 481
    invoke-static {v0}, Lcom/android/sec_settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    goto :goto_1

    .line 485
    :cond_6
    iget-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-eq v3, v4, :cond_1

    .line 490
    iput-object v3, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    .line 493
    iget-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v4, :cond_7

    .line 494
    iget-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onDestroy()V

    .line 495
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    .line 498
    :cond_7
    iget-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-eqz v4, :cond_1

    .line 499
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 501
    sget-object v4, Lcom/android/sec_settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v5, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v5}, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 523
    :goto_3
    iget-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_1

    .line 503
    :pswitch_0
    new-instance v4, Lcom/android/sec_settings/guide/BtGuider;

    invoke-direct {v4, v0}, Lcom/android/sec_settings/guide/BtGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 507
    :pswitch_1
    new-instance v4, Lcom/android/sec_settings/guide/BtSettingsGuider;

    invoke-direct {v4, v0}, Lcom/android/sec_settings/guide/BtSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 511
    :pswitch_2
    new-instance v4, Lcom/android/sec_settings/guide/WifiGuider;

    invoke-direct {v4, v0}, Lcom/android/sec_settings/guide/WifiGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 515
    :pswitch_3
    new-instance v4, Lcom/android/sec_settings/guide/WifiSettingsGuider;

    invoke-direct {v4, v0}, Lcom/android/sec_settings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isInGuideMode()Z
    .locals 1

    .prologue
    .line 378
    sget-boolean v0, Lcom/android/sec_settings/guide/GuideFragment;->sIsInGuideMode:Z

    return v0
.end method

.method public static isInGuideMode(Landroid/app/Activity;)Z
    .locals 1
    .parameter "parentActivity"

    .prologue
    .line 365
    sget-boolean v0, Lcom/android/sec_settings/guide/GuideFragment;->sIsInGuideMode:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/sec_settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/sec_settings/guide/GuideFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 742
    invoke-static {}, Lcom/android/sec_settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static newInstance(Landroid/content/Intent;)Lcom/android/sec_settings/guide/GuideFragment;
    .locals 3
    .parameter "settingsIntent"

    .prologue
    .line 390
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 394
    const/4 v1, 0x0

    .line 404
    :goto_0
    return-object v1

    .line 397
    :cond_0
    new-instance v1, Lcom/android/sec_settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/sec_settings/guide/GuideFragment;-><init>()V

    .line 400
    .local v1, f:Lcom/android/sec_settings/guide/GuideFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 401
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 402
    invoke-virtual {v1, v0}, Lcom/android/sec_settings/guide/GuideFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "activity"

    .prologue
    .line 60
    invoke-static {p2}, Lcom/android/sec_settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/sec_settings/guide/GuideFragmentCallback;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/sec_settings/guide/GuideFragment;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 63
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 66
    :cond_0
    return-void
.end method

.method public static setEnablersForGuide(Landroid/app/Activity;Lcom/android/sec_settings/wifi/WifiEnabler;Lcom/android/sec_settings/bluetooth/BluetoothEnabler;)V
    .locals 3
    .parameter "activity"
    .parameter "mWifiEnabler"
    .parameter "mBluetoothEnabler"

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/guide/GuideFragmentCallback;

    move-object v0, v1

    check-cast v0, Lcom/android/sec_settings/guide/GuideFragmentCallback;

    .line 330
    .local v0, guide:Lcom/android/sec_settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0, p2, p1}, Lcom/android/sec_settings/guide/GuideFragmentCallback;->setEnablers(Lcom/android/sec_settings/bluetooth/BluetoothEnabler;Lcom/android/sec_settings/wifi/WifiEnabler;)V

    .line 333
    :cond_0
    return-void
.end method

.method public static setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 4
    .parameter "activity"
    .parameter "header"

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, retval:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    const/4 v2, 0x0

    .line 90
    :goto_0
    return v2

    .line 84
    :cond_1
    invoke-static {p0}, Lcom/android/sec_settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/sec_settings/guide/GuideFragmentCallback;

    move-result-object v0

    .line 86
    .local v0, guider:Lcom/android/sec_settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_2

    .line 87
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-interface {v0, v2, v3}, Lcom/android/sec_settings/guide/GuideFragmentCallback;->setSelectedSectionId(J)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 575
    .local v0, keyCode:I
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-eqz v2, :cond_0

    .line 576
    packed-switch v0, :pswitch_data_0

    .line 583
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v0, p1}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 590
    :cond_0
    :goto_0
    return v1

    .line 579
    :pswitch_0
    const/4 v1, 0x0

    .line 580
    goto :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 428
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/sec_settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/sec_settings/guide/GuideFragment$GuideModes;)V

    .line 431
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 435
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 441
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 442
    invoke-static {p1}, Lcom/android/sec_settings/guide/GuideModeHelper;->init(Landroid/content/Context;)V

    .line 444
    invoke-direct {p0, v1, v1}, Lcom/android/sec_settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/sec_settings/guide/GuideFragment$GuideModes;)V

    .line 446
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 557
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 558
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 414
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 416
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    .line 420
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/guide/GuideFragment;->setHasOptionsMenu(Z)V

    .line 421
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/guide/GuideFragment;->setRetainInstance(Z)V

    .line 422
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 562
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 564
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onDestroy()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    .line 568
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 732
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 544
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 546
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onPause()V

    .line 549
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 724
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 531
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-boolean v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onResume()V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->finish()V

    goto :goto_0
.end method

.method public setEnablers(Lcom/android/sec_settings/bluetooth/BluetoothEnabler;Lcom/android/sec_settings/wifi/WifiEnabler;)V
    .locals 4
    .parameter "enablerBT"
    .parameter "enablerWiFi"

    .prologue
    .line 597
    new-instance v0, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;

    iget-object v1, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    :cond_0
    move-object p2, p1

    .end local p2
    :cond_1
    invoke-direct {v0, v1, p2}, Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;-><init>(Lcom/android/sec_settings/guide/GuideFragment$GuideModes;Ljava/lang/Object;)V

    .line 601
    .local v0, enabler:Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;
    iget-object v1, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_2

    .line 602
    iget-object v1, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v1, v0}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->setEnabler(Lcom/android/sec_settings/guide/GuideFragment$WrappedEnabler;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/GuideFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    iget-object v1, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v1}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    .line 608
    :cond_2
    return-void
.end method

.method public setSelectedSectionId(J)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 614
    invoke-static {}, Lcom/android/sec_settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 620
    :goto_0
    return v0

    .line 618
    :cond_0
    invoke-static {p1, p2}, Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;->fromId(J)Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;

    .line 620
    invoke-virtual {p0}, Lcom/android/sec_settings/guide/GuideFragment;->switchGuiderMode()Z

    move-result v0

    goto :goto_0
.end method

.method switchGuiderMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 635
    const/4 v0, 0x0

    .line 636
    .local v0, nextMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;
    const/4 v1, 0x0

    .line 638
    .local v1, retval:Z
    invoke-static {}, Lcom/android/sec_settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 639
    const/4 v2, 0x0

    .line 671
    :goto_0
    return v2

    .line 643
    :cond_0
    sget-object v2, Lcom/android/sec_settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$SettingsHeader:[I

    iget-object v3, p0, Lcom/android/sec_settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v3}, Lcom/android/sec_settings/guide/GuideFragment$SettingsHeader;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 660
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 661
    invoke-direct {p0, v4, v0}, Lcom/android/sec_settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/sec_settings/guide/GuideFragment$GuideModes;)V

    .line 663
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_2

    .line 664
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v4}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    .line 665
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v4}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 666
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mGuider:Lcom/android/sec_settings/guide/GuiderLifecycleListener;

    invoke-interface {v2}, Lcom/android/sec_settings/guide/GuiderLifecycleListener;->onResume()V

    .line 668
    :cond_2
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    .line 671
    goto :goto_0

    .line 645
    :pswitch_0
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    .line 646
    sget-object v0, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    .line 651
    :pswitch_1
    iget-object v2, p0, Lcom/android/sec_settings/guide/GuideFragment;->mMode:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    .line 652
    sget-object v0, Lcom/android/sec_settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/sec_settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
