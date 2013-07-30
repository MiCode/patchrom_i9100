.class public Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmartSwitchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;,
        Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;,
        Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;
    }
.end annotation


# static fields
.field private static final SMARTALERT_ANIMATION_IMAGE:[I

.field private static final SMARTSTAY_ANIMATION_IMAGE:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSBeamController:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

.field private static sSettingsObserver:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationType:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SmartSwitchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 431
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    .line 438
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->SMARTALERT_ANIMATION_IMAGE:[I

    return-void

    .line 431
    :array_0
    .array-data 0x4
        0x99t 0x3t 0x2t 0x7ft
        0x9at 0x3t 0x2t 0x7ft
        0x9bt 0x3t 0x2t 0x7ft
        0x9ct 0x3t 0x2t 0x7ft
    .end array-data

    .line 438
    :array_1
    .array-data 0x4
        0x79t 0x2t 0x2t 0x7ft
        0x7at 0x2t 0x2t 0x7ft
        0x7bt 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 417
    iput-object v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 425
    iput-object v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 426
    iput v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 427
    iput v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 495
    new-instance v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$2;-><init>(Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;)V

    iput-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    .line 783
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 124
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400fc

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 135
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b02c4

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 137
    const v1, 0x7f0b02c8

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 141
    const v1, 0x7f0b02bc

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 143
    const v1, 0x7f0b02c0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 146
    invoke-static {v0, p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 147
    return-object v0
.end method

.method private static checkController(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

    .line 88
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;->register()V

    .line 90
    :cond_0
    return-void
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    .line 79
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;->startObserving()V

    .line 81
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    const-class v1, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 315
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 317
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 319
    return-object v0
.end method

.method private static isEnabled(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    if-nez p1, :cond_2

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "motion_engine"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 269
    const-string v1, "SmartSwitchWidgetProvider"

    const-string v3, "Motion is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 302
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v1

    .line 272
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const-string v3, "motion_pick_up_to_call_out"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 274
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    if-ne p1, v1, :cond_3

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "intelligent_sleep_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 278
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "voice_input_control"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 282
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 283
    invoke-static {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    .line 284
    sget-object v1, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v1}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;->isEnabled()Z

    move-result v1

    goto :goto_0

    .line 285
    :cond_5
    const/4 v3, 0x4

    if-ne p1, v3, :cond_7

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "motion_engine"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    .line 291
    const-string v1, "SmartSwitchWidgetProvider"

    const-string v3, "Motion is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 292
    goto :goto_0

    .line 294
    :cond_6
    const-string v3, "motion_pick_up"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 296
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_7
    const/4 v3, 0x5

    if-ne p1, v3, :cond_8

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "psm_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_8
    move v1, v2

    .line 302
    goto :goto_0
.end method

.method private showPowerSavingGuideDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 732
    :cond_0
    new-instance v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;-><init>(Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 733
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 734
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 735
    return-void
.end method

.method private showSmartAlertGuideDialog(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 569
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 570
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 571
    iput-object v5, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 574
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 576
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400b5

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 577
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f0b00c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 578
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v3, 0x7f0b00c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 580
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090a65

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 585
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 587
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 588
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$4;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$4;-><init>(Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 598
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 599
    const-string v3, "SmartSwitchWidgetProvider"

    const-string v4, "Start animation..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 601
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 602
    invoke-direct {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    .line 604
    :cond_1
    return-void
.end method

.method private showSmartStayGuideDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 446
    iget-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 448
    iput-object v6, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 451
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 453
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400b7

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 454
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b00c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 455
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v4, 0x7f0b00c2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 457
    const v4, 0x7f0b0216

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 458
    .local v3, textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090bea

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    const v4, 0x7f0b0217

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 461
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090beb

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const v4, 0x7f0b0218

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 464
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090bec

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const v4, 0x7f0b0219

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 467
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090d36

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090be4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 475
    iget-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 477
    iget-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 478
    iget-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$1;-><init>(Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 488
    iget-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 489
    const-string v4, "SmartSwitchWidgetProvider"

    const-string v5, "Start animation..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iput v7, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 491
    iput v7, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 492
    invoke-direct {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    .line 494
    :cond_1
    return-void
.end method

.method private showVoiceCmdGuideDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 536
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 537
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 538
    iput-object v6, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 541
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 543
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04003c

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 544
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f0b0079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 546
    .local v0, checkBox:Landroid/widget/CheckBox;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090ca4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090ca6

    new-instance v5, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$3;-><init>(Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090ca7

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 562
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 564
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 565
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const-string v0, "SmartSwitchWidgetProvider"

    const-string v1, "Stop animation..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 5

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v1, "SmartSwitchWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change animation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    .line 509
    .local v0, animation:[I
    iget v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 510
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->SMARTALERT_ANIMATION_IMAGE:[I

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    iget v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 514
    iget v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    array-length v2, v0

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 515
    iget-object v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    .line 517
    iget-object v3, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    iget v1, p0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    if-nez v1, :cond_3

    const-wide/16 v1, 0x7d0

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x1f4

    goto :goto_1
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .parameter "views"
    .parameter "context"

    .prologue
    const v5, 0x7f0b02c1

    const v4, 0x7f0b02bf

    const v1, 0x7f0b02bd

    const v3, 0x7f02042f

    const v2, 0x7f02042e

    .line 172
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const v0, 0x7f020432

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 175
    invoke-virtual {p0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 185
    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const v0, 0x7f02043a

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 188
    const v0, 0x7f0b02c3

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 225
    :goto_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const v0, 0x7f0b02c5

    const v1, 0x7f02043c

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 228
    const v0, 0x7f0b02c7

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 238
    :goto_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    const v0, 0x7f0b02c9

    const v1, 0x7f020436

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 241
    const v0, 0x7f0b02cb

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 250
    :goto_3
    return-void

    .line 178
    :cond_0
    const v0, 0x7f020433

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 180
    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 191
    :cond_1
    const v0, 0x7f02043b

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 193
    const v0, 0x7f0b02c3

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 231
    :cond_2
    const v0, 0x7f0b02c5

    const v1, 0x7f02043d

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 233
    const v0, 0x7f0b02c7

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 244
    :cond_3
    const v0, 0x7f0b02c9

    const v1, 0x7f020437

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 246
    const v0, 0x7f0b02cb

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 156
    invoke-static {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 157
    invoke-static {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    .line 158
    invoke-static {p0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 160
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 161
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 162
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 110
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;->stopObserving()V

    .line 112
    sput-object v1, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    .line 114
    :cond_0
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;->unregister()V

    .line 116
    sput-object v1, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;

    .line 118
    :cond_1
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 105
    invoke-static {p1}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 330
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 331
    const-string v7, "SmartSwitchWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START onReceive()_intent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 335
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 336
    .local v0, buttonId:I
    invoke-static {p1, v0}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v3

    .line 337
    .local v3, enabled:Z
    if-nez v0, :cond_3

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 339
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_2

    .line 341
    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 413
    .end local v0           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #enabled:Z
    :cond_1
    return-void

    .line 344
    .restart local v0       #buttonId:I
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #data:Landroid/net/Uri;
    .restart local v3       #enabled:Z
    :cond_2
    const-string v6, "motion_engine"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 349
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_3
    if-ne v0, v5, :cond_6

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 351
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_4

    .line 352
    const-string v5, "intelligent_sleep_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 357
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v7, "pref_smart_stay_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->showSmartStayGuideDialog(Landroid/content/Context;)V

    .line 361
    :cond_5
    const-string v6, "intelligent_sleep_mode"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 364
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_9

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 366
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_7

    .line 367
    const-string v5, "voice_input_control"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 369
    :cond_7
    const-string v7, "voiceinputcontrol_showNeverAgain"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_8

    .line 372
    invoke-direct {p0, p1}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->showVoiceCmdGuideDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 374
    :cond_8
    const-string v6, "voice_input_control"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 377
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_9
    const/4 v7, 0x3

    if-ne v0, v7, :cond_b

    .line 378
    if-nez v3, :cond_a

    :goto_1
    invoke-static {v5}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider$SBeamController;->toggle(Z)V

    goto :goto_0

    :cond_a
    move v5, v6

    goto :goto_1

    .line 379
    :cond_b
    const/4 v7, 0x4

    if-ne v0, v7, :cond_e

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 381
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_c

    .line 383
    const-string v5, "motion_pick_up"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 386
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 388
    .restart local v4       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v7, "pref_smart_alert_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->showSmartAlertGuideDialog(Landroid/content/Context;)V

    .line 392
    :cond_d
    const-string v6, "motion_engine"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    const-string v6, "motion_pick_up"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 397
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_e
    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    .line 398
    if-eqz v3, :cond_f

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "psm_switch"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 401
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->showPowerSavingGuideDialog(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 96
    invoke-static {p1}, Lcom/android/sec_settings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 98
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 99
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method
