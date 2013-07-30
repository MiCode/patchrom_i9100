.class public Lcom/android/sec_settings/motion2013/SMotionGuideHub;
.super Landroid/app/Fragment;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

.field private mGuideAniResID:I

.field private mGuideContent:Ljava/lang/String;

.field private mHasAdvancedSettings:Z

.field private mHasSensitivity:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mLearnAboutTitleID:I

.field private mMessageView:Landroid/widget/TextView;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 99
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 100
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 101
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 102
    iput v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 103
    iput v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 118
    iput-boolean v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 121
    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 122
    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 124
    new-instance v0, Lcom/android/sec_settings/motion2013/SMotionGuideHub$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub$1;-><init>(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lcom/android/sec_settings/motion2013/SMotionGuideHub$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub$2;-><init>(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sec_settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    return-void
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter

    .prologue
    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    const-string v1, "SMotionGuideHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 638
    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const v5, 0x7f090a79

    const v4, 0x7f090a78

    .line 317
    const-string v2, "quick_glance"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const-string v2, "air_motion_glance_view"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 320
    const v2, 0x7f090aec

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 321
    const v2, 0x7f02001d

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 421
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v2, "air_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const-string v2, "air_motion_scroll"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ad4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 325
    const v2, 0x7f090ad3

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 326
    const v2, 0x7f02001e

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 327
    :cond_1
    const-string v2, "air_turn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    const-string v2, "air_motion_turn"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ad6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 330
    const v2, 0x7f090ad5

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 331
    const v2, 0x7f02001f

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 332
    :cond_2
    const-string v2, "air_move"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    const-string v2, "air_motion_item_move"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 334
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ad8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 335
    const v2, 0x7f090ad7

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 336
    const v2, 0x7f02001b

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto :goto_0

    .line 337
    :cond_3
    const-string v2, "air_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    const-string v2, "air_motion_clip"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ada

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 340
    const v2, 0x7f090ad9

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 341
    const v2, 0x7f02001c

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 342
    :cond_4
    const-string v2, "air_call_accept"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 343
    const-string v2, "air_motion_call_accept"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090adc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 345
    const v2, 0x7f090adb

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 346
    const v2, 0x7f02001a

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 347
    :cond_5
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 348
    const-string v2, "motion_zooming"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a7f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 350
    iput v4, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 351
    const v2, 0x7f020298

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 352
    :cond_6
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 353
    const-string v2, "motion_tilt_to_list_scrolling"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a80

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 355
    iput v4, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 356
    const v2, 0x7f02028f

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 357
    :cond_7
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 358
    const-string v2, "motion_panning"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a81

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 360
    iput v5, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 361
    const v2, 0x7f020278

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 362
    :cond_8
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 363
    const-string v2, "motion_pan_to_browse_image"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a82

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 365
    iput v5, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 366
    const v2, 0x7f020277

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 367
    :cond_9
    const-string v2, "shake"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 368
    const-string v2, "motion_shake"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 369
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a83

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 370
    const/4 v1, 0x1

    .line 372
    .local v1, isKiesWiFiInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.kieswifi"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_1
    if-nez v1, :cond_a

    .line 377
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a84

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 379
    :cond_a
    const v2, 0x7f090a7a

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 380
    const v2, 0x7f020281

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 381
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #isKiesWiFiInstalled:Z
    :cond_b
    const-string v2, "double_tap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 382
    const-string v2, "motion_double_tap"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 383
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a85

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 384
    const v2, 0x7f090a7b

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 385
    const v2, 0x7f02026a

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 386
    :cond_c
    const-string v2, "pick_up"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 387
    const-string v2, "motion_pick_up"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 388
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a86

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 389
    const v2, 0x7f090a7c

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 390
    const v2, 0x7f020282

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 391
    :cond_d
    const-string v2, "pick_up_to_call_out"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 392
    const-string v2, "motion_pick_up_to_call_out"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 393
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a98

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 394
    const v2, 0x7f090a7d

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 395
    const v2, 0x7f020267

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 396
    :cond_e
    const-string v2, "turn_over"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 397
    const-string v2, "motion_overturn"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 398
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a89

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 399
    const v2, 0x7f090a7e

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 400
    const v2, 0x7f02029c

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 401
    :cond_f
    const-string v2, "palm_swipe"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 402
    const-string v2, "surface_palm_swipe"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 403
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aa4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 404
    const v2, 0x7f090aa3

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 405
    const v2, 0x7f020091

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 406
    :cond_10
    const-string v2, "palm_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 407
    const-string v2, "surface_palm_touch"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 408
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aa6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 409
    const v2, 0x7f090aa5

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 410
    const v2, 0x7f020092

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 411
    :cond_11
    const-string v2, "tap_and_twist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 412
    const-string v2, "surface_tap_and_twist"

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090aa8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 414
    const v2, 0x7f090aa7

    iput v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 417
    :cond_12
    const-string v2, "SMotionGuideHub"

    const-string v3, "Cannot get correct motion information"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 582
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a95

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a94

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a93

    new-instance v3, Lcom/android/sec_settings/motion2013/SMotionGuideHub$3;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub$3;-><init>(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09012d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 595
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/sec_settings/motion2013/SMotionGuideHub$4;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub$4;-><init>(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 601
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 605
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a91

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a90

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e3

    new-instance v2, Lcom/android/sec_settings/motion2013/SMotionGuideHub$6;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub$6;-><init>(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a92

    new-instance v2, Lcom/android/sec_settings/motion2013/SMotionGuideHub$5;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub$5;-><init>(Lcom/android/sec_settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 620
    return-void
.end method

.method private startTryActually(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v3, 0xa

    .line 470
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 472
    const-string v1, "android.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 474
    const-string v0, "SMotionGuideHub"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 477
    const-class v1, Lcom/android/sec_settings/motion2013/AirScrollTutorial;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090add

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 478
    :cond_2
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-string v0, "air_move"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const-string v0, "air_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const-string v0, "air_call_accept"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_3
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 499
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 501
    :cond_4
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 504
    :cond_5
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :cond_6
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v1, "MotionTest"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 518
    :cond_7
    const-string v0, "shake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 526
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 527
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 529
    :cond_8
    const-string v0, "double_tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 530
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 531
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 532
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 534
    :cond_9
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 537
    :cond_a
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 539
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 541
    :cond_b
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 543
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 545
    :cond_c
    const-string v0, "turn_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 546
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 547
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_d

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_d

    .line 548
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->showUseRingDialog()V

    goto/16 :goto_0

    .line 550
    :cond_d
    invoke-direct {p0, v6}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    .line 552
    :cond_e
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    const-string v1, "com.android.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 557
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 558
    :cond_f
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 561
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0, v0, v3}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 563
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 564
    :cond_10
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3
    .parameter "useRing"

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 571
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/sec_settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    .line 578
    return-void

    .line 575
    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 625
    iput-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 629
    iput-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 631
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 239
    iget v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 242
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 251
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 252
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 288
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    const-string v0, "air_motion_glance_view"

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0, p2}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    .line 300
    :cond_0
    return-void

    .line 289
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 147
    const-string v2, "type"

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 148
    const-string v2, "hasSensitivity"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 149
    const-string v2, "hasAdvancedSettings"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->setArgument(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    .line 161
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    .line 162
    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 165
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 166
    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 168
    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 172
    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    .line 175
    .end local v1           #padding:I
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 196
    const v3, 0x7f0400dd

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, guideView:Landroid/view/View;
    const v3, 0x7f0b0277

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    .line 198
    const v3, 0x7f0b0278

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    .line 199
    const v3, 0x7f0b0279

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 200
    .local v2, tryBtn:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-boolean v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    if-eqz v3, :cond_0

    .line 202
    const v3, 0x7f090a77

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 204
    :cond_0
    const v3, 0x7f0b027a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 205
    .local v0, advancedSettingBtn:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-boolean v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    if-nez v3, :cond_1

    .line 207
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    :cond_1
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_2
    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 261
    const-string v1, "default"

    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 267
    .local v0, motionEngineState:Z
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 276
    .end local v0           #motionEngineState:Z
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 281
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public startAdvancedSettings(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 424
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 426
    const-class v1, Lcom/android/sec_settings/motion2013/QuickGlanceAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090ade

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 429
    const-class v1, Lcom/android/sec_settings/motion2013/AirScrollAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090aee

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 430
    :cond_2
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 432
    const-class v1, Lcom/android/sec_settings/motion2013/AirTurnAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090af7

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public startSensitivityTest(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x5

    .line 439
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 441
    .local v1, sensitivity:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "MotionTest"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0, v5}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 467
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sensitivity:I
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    const-string v2, "SMotionGuideHub"

    const-string v3, "MOTION_TILT_TO_SCROLL_LIST"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :cond_2
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 453
    .restart local v1       #sensitivity:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 454
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v2, "Preview"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0, v5}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 458
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sensitivity:I
    :cond_3
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pan_to_browse_image_sensitivity"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 460
    .restart local v1       #sensitivity:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v2, "MotionTest"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string v2, "Sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v0, v5}, Lcom/android/sec_settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
