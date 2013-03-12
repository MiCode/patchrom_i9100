.class Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Charge"
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"


# instance fields
.field private final CMAS_MESSAGE_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_MSG:I

.field private mBatteryLevel:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCMASIcon:Landroid/widget/ImageView;

.field private mCMASNotiInfo:Landroid/app/NotificationInfo;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/widget/ImageView;

.field private mChargingText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPluggedIn:Z

.field private mPrevShowingCMASText:Z

.field private mShowingBatteryInfo:Z

.field private mShowingCMASText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1553
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1522
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 1523
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPluggedIn:Z

    .line 1524
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBatteryLevel:I

    .line 1525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 1527
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->MSG_PKG:Ljava/lang/String;

    .line 1528
    const/16 v0, 0x41c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->REQ_INDEX_MSG:I

    .line 1529
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    .line 1530
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    .line 1534
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->CMAS_MESSAGE_UPDATE:I

    .line 1536
    new-instance v0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$1;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mHandler:Landroid/os/Handler;

    .line 1554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setFocusableInTouchMode(Z)V

    .line 1555
    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1516
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getCMASCount()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1516
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1516
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->updateChargingInfo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1516
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setMarquee(Z)V

    return-void
.end method

.method private getCMASCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1694
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1696
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->MSG_PKG:Ljava/lang/String;

    const/16 v2, 0x41c

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    .line 1700
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    .line 1701
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    if-lez v1, :cond_3

    .line 1702
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->commonValue:I

    if-nez v1, :cond_2

    .line 1703
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    goto :goto_0

    .line 1705
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    goto :goto_0

    .line 1708
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    goto :goto_0
.end method

.method private setMarquee(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1686
    if-eqz p1, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1691
    :goto_0
    return-void

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateChargingInfo()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 1608
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    if-eqz v4, :cond_2

    .line 1609
    const/4 v0, 0x0

    .line 1610
    .local v0, cmasText:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1611
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1612
    const-string v4, "ClockWidget"

    const-string v5, "[updateChargingInfo] show cmas text - SPR!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104072c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1623
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setVisibility(I)V

    .line 1624
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1625
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1626
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1627
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1675
    .end local v0           #cmasText:Ljava/lang/String;
    :goto_1
    return-void

    .line 1615
    .restart local v0       #cmasText:Ljava/lang/String;
    :cond_0
    const-string v4, "ClockWidget"

    const-string v5, "[updateChargingInfo] show cmas text - No SPR!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104072b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1619
    :cond_1
    const-string v3, "ClockWidget"

    const-string v4, "[updateChargingInfo] No show cmas text !! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1632
    .end local v0           #cmasText:Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-nez v4, :cond_5

    .line 1633
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_owner_info_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 1635
    .local v2, ownerInfoEnabled:Z
    :goto_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$2800()Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    .line 1636
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_owner_info"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1637
    .local v1, ownerInfo:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setVisibility(I)V

    .line 1638
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1639
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1640
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1641
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v1           #ownerInfo:Ljava/lang/String;
    .end local v2           #ownerInfoEnabled:Z
    :cond_3
    move v2, v3

    .line 1633
    goto :goto_2

    .line 1644
    .restart local v2       #ownerInfoEnabled:Z
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setVisibility(I)V

    goto :goto_1

    .line 1649
    .end local v2           #ownerInfoEnabled:Z
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingBatteryInfo:Z

    if-eqz v4, :cond_9

    .line 1650
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPluggedIn:Z

    if-eqz v4, :cond_8

    .line 1651
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1652
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    .line 1665
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setVisibility(I)V

    .line 1666
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1667
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1668
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1654
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharging()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1655
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403ea

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_3

    .line 1657
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setVisibility(I)V

    goto/16 :goto_1

    .line 1663
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCharging:Ljava/lang/String;

    goto :goto_3

    .line 1671
    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setVisibility(I)V

    .line 1672
    const-string v3, " "

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1559
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1561
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1562
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1563
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1565
    new-instance v1, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge$2;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1576
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1577
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->refreshCMASInfo()V

    .line 1581
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1585
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1588
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1591
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 1595
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1596
    const v0, 0x10202ef

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingIcon:Landroid/widget/ImageView;

    .line 1597
    const v0, 0x10202f1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mChargingText:Landroid/widget/TextView;

    .line 1598
    const v0, 0x10202f0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    .line 1599
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVirginMobileDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    const v1, 0x1080427

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1605
    :cond_1
    :goto_0
    return-void

    .line 1602
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mCMASIcon:Landroid/widget/ImageView;

    const v1, 0x1080428

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1679
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingBatteryInfo:Z

    .line 1680
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPluggedIn:Z

    .line 1681
    iput p3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mBatteryLevel:I

    .line 1682
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->updateChargingInfo()V

    .line 1683
    return-void
.end method

.method public refreshCMASInfo()V
    .locals 2

    .prologue
    .line 1714
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->getCMASCount()V

    .line 1715
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    if-eq v0, v1, :cond_0

    .line 1716
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->updateChargingInfo()V

    .line 1717
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mShowingCMASText:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Charge;->mPrevShowingCMASText:Z

    .line 1719
    :cond_0
    return-void
.end method
