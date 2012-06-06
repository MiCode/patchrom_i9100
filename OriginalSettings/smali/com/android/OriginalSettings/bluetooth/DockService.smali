.class public final Lcom/android/OriginalSettings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 119
    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 120
    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 518
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/DockService$2;-><init>(Lcom/android/OriginalSettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 530
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/DockService$3;-><init>(Lcom/android/OriginalSettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 545
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/DockService$4;-><init>(Lcom/android/OriginalSettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 559
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/DockService$5;-><init>(Lcom/android/OriginalSettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/bluetooth/DockService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/bluetooth/DockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13
    .parameter "device"
    .parameter "startId"

    .prologue
    .line 757
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 822
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 763
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    .local v0, arr$:[Z
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-boolean v4, v0, v6

    .line 764
    .local v4, enable:Z
    if-eqz v4, :cond_3

    .line 765
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    .line 771
    .local v1, btState:I
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 774
    const/16 v10, 0xc

    if-eq v1, v10, :cond_3

    .line 775
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 779
    :cond_2
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 780
    iput p2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingStartId:I

    .line 781
    const/16 v10, 0xb

    if-eq v1, v10, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "disable_bt_when_undock"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 757
    .end local v0           #arr$:[Z
    .end local v1           #btState:I
    .end local v4           #enable:Z
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 763
    .restart local v0       #arr$:[Z
    .restart local v4       #enable:Z
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 790
    .end local v4           #enable:Z
    :cond_4
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 792
    const/4 v3, 0x0

    .line 793
    .local v3, callConnect:Z
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 795
    .local v2, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    array-length v10, v10

    if-ge v5, v10, :cond_7

    .line 796
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    aget-object v8, v10, v5

    .line 799
    .local v8, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_6

    .line 801
    const/4 v3, 0x1

    .line 810
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1, v10}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 795
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 802
    :cond_6
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_5

    .line 804
    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 805
    .local v9, status:I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 807
    iget-object v10, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    .line 818
    .end local v8           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v9           #status:I
    :cond_7
    if-eqz v3, :cond_0

    .line 820
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 745
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 747
    .local v0, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    .line 748
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 749
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 750
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_1
    monitor-exit p0

    return-void

    .line 745
    .end local v0           #cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 12
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 459
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 462
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 464
    :cond_0
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 465
    packed-switch p2, :pswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 475
    :pswitch_0
    const/4 v3, 0x0

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v3, v5}, Lcom/android/OriginalSettings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 478
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v7, 0x1

    .line 480
    .local v7, firstTime:Z
    :goto_1
    invoke-direct {p0, p1, p2, v7}, Lcom/android/OriginalSettings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 482
    .local v9, items:[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0230

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 486
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v0, v9, v3, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 491
    .local v8, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    .line 492
    .local v10, pixelScaleFactor:F
    const v3, 0x7f040080

    const/4 v5, 0x0

    invoke-virtual {v8, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 493
    .local v1, view:Landroid/view/View;
    const v3, 0x7f080197

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 496
    .local v11, rememberCheckbox:Landroid/widget/CheckBox;
    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 497
    .local v6, checked:Z
    :goto_2
    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 498
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 499
    const/high16 v3, 0x4160

    mul-float/2addr v3, v10

    float-to-int v2, v3

    .line 500
    .local v2, viewSpacingLeft:I
    const/high16 v3, 0x4160

    mul-float/2addr v3, v10

    float-to-int v4, v3

    .line 501
    .local v4, viewSpacingRight:I
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 508
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    iput p3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 511
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 512
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d9

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    .line 513
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 514
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 478
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    .end local v1           #view:Landroid/view/View;
    .end local v2           #viewSpacingLeft:I
    .end local v4           #viewSpacingRight:I
    .end local v6           #checked:Z
    .end local v7           #firstTime:Z
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #items:[Ljava/lang/CharSequence;
    .end local v10           #pixelScaleFactor:F
    .end local v11           #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 496
    .restart local v0       #ab:Landroid/app/AlertDialog$Builder;
    .restart local v1       #view:Landroid/view/View;
    .restart local v7       #firstTime:Z
    .restart local v8       #inflater:Landroid/view/LayoutInflater;
    .restart local v9       #items:[Ljava/lang/CharSequence;
    .restart local v10       #pixelScaleFactor:F
    .restart local v11       #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    .locals 4
    .parameter "device"

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 850
    .local v0, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 853
    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 176
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 9
    .parameter "startId"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, -0x64

    .line 669
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    .line 670
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 674
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 680
    :cond_0
    iput-object v8, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 681
    iget v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 708
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v6, :cond_2

    .line 709
    iget v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 710
    iput v6, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 713
    :cond_2
    invoke-static {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 714
    :goto_1
    return-void

    .line 683
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 689
    .local v2, prefs:Landroid/content/SharedPreferences;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4}, Lcom/android/OriginalSettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 690
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 691
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 693
    .local v3, state:I
    if-eqz v3, :cond_4

    .line 694
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 696
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 697
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 699
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const-string v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    iput p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 702
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v3, -0x64

    .line 635
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 636
    .local v0, btState:I
    monitor-enter p0

    .line 638
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 639
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/bluetooth/DockService;->handleBluetoothStateOn(I)V

    .line 665
    :cond_0
    :goto_0
    monitor-exit p0

    .line 666
    return-void

    .line 640
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 645
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 646
    invoke-static {p0, p2}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 647
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 652
    :try_start_1
    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v3, :cond_3

    .line 653
    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 654
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 655
    const/16 v1, -0x64

    iput v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 658
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    .line 659
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 660
    iput p2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    .line 662
    :cond_4
    invoke-static {p0, p2}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 826
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/OriginalSettings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 829
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/OriginalSettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    :goto_0
    monitor-exit p0

    return-void

    .line 831
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 836
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 837
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 838
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 840
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 842
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 843
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 844
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 845
    .local v0, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    monitor-exit p0

    return-void

    .line 836
    .end local v0           #cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;I)V
    .locals 7
    .parameter "disconnectedDevice"
    .parameter "profile"
    .parameter "startId"

    .prologue
    .line 723
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 725
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 726
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 727
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 729
    .local v3, state:I
    if-eqz v3, :cond_0

    .line 730
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 732
    .local v1, dockedDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 735
    .local v0, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 741
    .end local v0           #cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    .end local v1           #dockedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #state:I
    :cond_0
    invoke-static {p0, p3}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    .line 723
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 6
    .parameter "device"
    .parameter "state"
    .parameter "firstTime"

    .prologue
    const v3, 0x7f0b0232

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 583
    packed-switch p2, :pswitch_data_0

    .line 593
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    .line 587
    :pswitch_0
    const/4 v1, 0x1

    .line 596
    .local v1, numOfProfiles:I
    :goto_1
    new-array v2, v1, [Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 597
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    .line 598
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 601
    .local v0, items:[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 620
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 621
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 622
    if-eqz p3, :cond_1

    .line 624
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 590
    .end local v0           #items:[Ljava/lang/CharSequence;
    .end local v1           #numOfProfiles:I
    :pswitch_2
    const/4 v1, 0x2

    .line 591
    .restart local v1       #numOfProfiles:I
    goto :goto_1

    .line 603
    .restart local v0       #items:[Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x7f0b0231

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 604
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 605
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 606
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    .line 607
    if-eqz p3, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    .line 610
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_0

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 613
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_0

    .line 626
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfiles:[Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 601
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 4
    .parameter "startId"

    .prologue
    const/4 v1, 0x1

    .line 302
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    const/4 v1, 0x0

    .line 313
    :goto_0
    return v1

    .line 308
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "disable_bt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    iput p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    goto :goto_0
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 3
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 367
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x22b

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 368
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 376
    :cond_0
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 381
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 382
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 385
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 396
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 387
    :cond_2
    move-object v0, p1

    .line 388
    .local v0, d:Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/DockService$1;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/OriginalSettings/bluetooth/DockService$1;-><init>(Lcom/android/OriginalSettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 393
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .parameter "device"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 328
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 335
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "disable_bt_when_undock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt_when_undock"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    :cond_0
    :goto_0
    return v2

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, newMsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 349
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, newMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 422
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 423
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 430
    .local v2, state:I
    if-nez v0, :cond_0

    .line 431
    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-object v3

    .line 436
    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 438
    :pswitch_0
    const/16 v1, 0x14d

    .line 454
    .local v1, msgType:I
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    .line 444
    .end local v1           #msgType:I
    :pswitch_1
    const-string v3, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    const/16 v1, 0x6f

    .restart local v1       #msgType:I
    goto :goto_1

    .line 447
    .end local v1           #msgType:I
    :cond_1
    const/16 v1, 0xde

    .line 449
    .restart local v1       #msgType:I
    goto :goto_1

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 256
    .local v2, msgType:I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 257
    .local v4, state:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 258
    .local v3, startId:I
    const/4 v1, 0x0

    .line 259
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 260
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 266
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v0, 0x0

    .line 268
    .local v0, deferFinishCall:Z
    sparse-switch v2, :sswitch_data_0

    .line 290
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_1

    const/16 v5, 0x14d

    if-eq v2, v5, :cond_1

    if-nez v0, :cond_1

    .line 294
    invoke-static {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    monitor-exit p0

    return-void

    .line 270
    :sswitch_0
    :try_start_1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    .end local v0           #deferFinishCall:Z
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #msgType:I
    .end local v3           #startId:I
    .end local v4           #state:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 274
    .restart local v0       #deferFinishCall:Z
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #msgType:I
    .restart local v3       #startId:I
    .restart local v4       #state:I
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v4, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .line 275
    goto :goto_0

    .line 278
    :sswitch_2
    invoke-direct {p0, v1, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .line 279
    goto :goto_0

    .line 282
    :sswitch_3
    invoke-direct {p0, v1, v4, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 286
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "dock"

    .prologue
    const/4 v5, 0x0

    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 401
    .local v2, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;>;"
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 402
    .local v1, btDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 418
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 410
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 411
    .local v3, deviceUI:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 412
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 415
    const/4 v5, 0x1

    goto :goto_0

    .line 400
    .end local v0           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #btDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;>;"
    .end local v3           #deviceUI:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 127
    .local v0, manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 128
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 133
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    .line 134
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 135
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    .line 136
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 143
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 144
    new-instance v2, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/OriginalSettings/bluetooth/DockService$1;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 151
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 162
    :cond_2
    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 163
    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    .line 164
    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 165
    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 166
    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mServiceHandler:Lcom/android/OriginalSettings/bluetooth/DockService$ServiceHandler;

    .line 167
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 860
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :cond_0
    monitor-exit p0

    return-void

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 866
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 183
    if-nez p1, :cond_1

    .line 189
    invoke-static {p0, p3}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 239
    :cond_0
    :goto_0
    return v7

    .line 193
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    invoke-direct {p0, p1, p3}, Lcom/android/OriginalSettings/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 203
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 206
    .local v0, disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 207
    .local v3, retryCount:I
    if-ge v3, v8, :cond_0

    .line 208
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/OriginalSettings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 212
    .end local v0           #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #retryCount:I
    :cond_3
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 213
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 216
    .restart local v0       #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 217
    .restart local v3       #retryCount:I
    if-ge v3, v8, :cond_0

    .line 218
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/DockService;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/OriginalSettings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 224
    .end local v0           #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #retryCount:I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 225
    .local v1, msg:Landroid/os/Message;
    if-nez v1, :cond_5

    .line 228
    invoke-static {p0, p3}, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 232
    :cond_5
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_6

    .line 233
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    :cond_6
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 237
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
