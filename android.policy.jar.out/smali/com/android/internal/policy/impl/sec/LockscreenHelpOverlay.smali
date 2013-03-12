.class public Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlay.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "LockscreenHelpOverlay"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final SCREEN_UPDATE:I

.field deviceDpi:I

.field private gestureImageArray:[I

.field private isTickerOn:Z

.field private mBottomPadding:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mGestureImage:Landroid/widget/ImageView;

.field private mGestureLayout:Landroid/widget/RelativeLayout;

.field private mGestureText:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpButton:Landroid/widget/Button;

.field private mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

.field private mIsHelpHubInstalled:Z

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mLeftPadding:I

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedMsgCount:I

.field private mShortcutItemNum:I

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mWhichTip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V
    .locals 6
    .parameter "context"
    .parameter "callback"
    .parameter "configuration"
    .parameter "helpCallback"
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->MISSED_EVENT_UPDATE:I

    .line 72
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 73
    iput v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->REQ_INDEX_CALL_EMAIL:I

    .line 74
    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->REQ_INDEX_MSG:I

    .line 76
    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallCount:I

    .line 77
    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedMsgCount:I

    .line 82
    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->CALL_PKG:Ljava/lang/String;

    .line 83
    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->MSG_PKG:Ljava/lang/String;

    .line 84
    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->EMAIL_PKG:Ljava/lang/String;

    .line 99
    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mBottomPadding:I

    .line 100
    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mLeftPadding:I

    .line 110
    new-instance v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$1;-><init>(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 127
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    .line 128
    iput p5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mChecked:I

    .line 129
    iput p6, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mShortcutItemNum:I

    .line 130
    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mCreationOrientation:I

    .line 131
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "information_ticker"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->isTickerOn:Z

    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->isHelpHubInstalled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mIsHelpHubInstalled:Z

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 135
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_6

    .line 137
    const v2, 0x109006f

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    :goto_1
    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "eng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 144
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    .line 149
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getDpi(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->deviceDpi:I

    .line 150
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceDpi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->deviceDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "LockscreenHelpOverlay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    const v2, 0x102033a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    .line 154
    const v2, 0x102033b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    .line 155
    const v2, 0x1020019

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHelpButton:Landroid/widget/Button;

    .line 156
    const v2, 0x1020338

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureLayout:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setGestureImageArray()V

    .line 160
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 161
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->MSG_PKG:Ljava/lang/String;

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->updateMissedEvent()V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    new-instance v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$2;-><init>(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "Broadcast register"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_4
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setWhichHelpInfo(II)V

    .line 189
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    move v2, v4

    .line 131
    goto/16 :goto_0

    .line 140
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_6
    const v2, 0x1090070

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 146
    :cond_7
    sput-boolean v4, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 346
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 348
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v1

    .line 351
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_4

    .line 352
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 359
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6

    .line 360
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 353
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_5

    .line 354
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 355
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_2

    .line 356
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 362
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;

    if-eq p1, v2, :cond_7

    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 363
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 2

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->updateMissedEvent()V

    .line 320
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedMsgCount:I

    if-gtz v0, :cond_0

    .line 321
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 322
    :cond_0
    return-void
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    .line 404
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 405
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 408
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 409
    const/4 v3, 0x1

    .line 410
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setGestureImageArray()V
    .locals 7

    .prologue
    const v6, 0x108064c

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    .line 193
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mCreationOrientation:I

    if-eq v0, v2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080643

    aput v1, v0, v5

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080645

    aput v1, v0, v4

    .line 196
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080648

    aput v1, v0, v2

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x108064a

    aput v1, v0, v3

    .line 217
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    aput v6, v0, v2

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    aput v6, v0, v3

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080644

    aput v1, v0, v5

    .line 205
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->isTickerOn:Z

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080647

    aput v1, v0, v4

    .line 209
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080649

    aput v1, v0, v2

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x108064b

    aput v1, v0, v3

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080646

    aput v1, v0, v4

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x108064d

    aput v1, v0, v2

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x108064d

    aput v1, v0, v3

    goto :goto_0
.end method

.method private updateMissedEvent()V
    .locals 5

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 328
    .local v1, nMsgCount:I
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;)I

    move-result v0

    .line 329
    sget-object v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->getNumMissedEvent(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$NotiMode;)I

    move-result v1

    .line 331
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallCount:I

    if-eq v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 332
    iput v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallCount:I

    .line 335
    :cond_0
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedMsgCount:I

    if-eq v1, v2, :cond_2

    if-ltz v1, :cond_2

    .line 338
    iput v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedMsgCount:I

    .line 341
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_3
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 382
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() Broadcast unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    .line 386
    return-void
.end method

.method public getWhichTip()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 396
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    .line 399
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 375
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    .line 377
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 370
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setWhichHelpInfo()V

    .line 372
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public setHelpLayoutFlag()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 288
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    if-gtz v2, :cond_0

    .line 289
    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "mWhichTip ==0 in setHelpLayoutFlag"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 293
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mChecked:I

    const-wide/high16 v3, 0x4024

    iget v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mChecked:I

    .line 294
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChekced() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mIsHelpHubInstalled:Z

    if-eqz v2, :cond_2

    .line 296
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 297
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "displayed"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 299
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/net/Uri;

    .line 300
    .local v0, uri:[Landroid/net/Uri;
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v7

    .line 301
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v8

    .line 302
    const/4 v2, 0x2

    const-string v3, "content://com.samsung.helphub.provider/help_page_status/unlock_via_events"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    .line 304
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 306
    .end local v0           #uri:[Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "help_overlay_checked"

    iget v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setPaddingForShorcutGesture()V
    .locals 4

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 221
    .local v0, shortcutPadding:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 223
    .local v1, shortcutWidth:I
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 224
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->isTickerOn:Z

    if-eqz v2, :cond_0

    .line 225
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->deviceDpi:I

    mul-int/lit8 v2, v2, 0x40

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mBottomPadding:I

    .line 227
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mShortcutItemNum:I

    if-lez v2, :cond_1

    .line 228
    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mShortcutItemNum:I

    rsub-int/lit8 v2, v2, 0x4

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mLeftPadding:I

    .line 229
    :cond_1
    return-void
.end method

.method public setWhichHelpInfo()V
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mChecked:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mShortcutItemNum:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setWhichHelpInfo(II)V

    .line 234
    return-void
.end method

.method public setWhichHelpInfo(II)V
    .locals 7
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const v6, 0x10406f7

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 237
    const/4 v0, 0x1

    .line 239
    .local v0, mShowingNumber:I
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_2

    .line 242
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    div-int/lit8 p1, p1, 0xa

    .line 252
    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_3

    if-lez p2, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setPaddingForShorcutGesture()V

    .line 254
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    .line 255
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mLeftPadding:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mBottomPadding:I

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 258
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_3
    div-int/lit8 p1, p1, 0xa

    .line 265
    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedCallCount:I

    if-lez v1, :cond_4

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_4

    .line 266
    iput v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    .line 267
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 270
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mMissedMsgCount:I

    if-lez v1, :cond_5

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_5

    .line 275
    iput v5, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 279
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_5
    iput v4, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    .line 284
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWhichTip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->mWhichTip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
