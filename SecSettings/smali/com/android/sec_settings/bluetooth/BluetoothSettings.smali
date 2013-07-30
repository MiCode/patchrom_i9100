.class public final Lcom/android/sec_settings/bluetooth/BluetoothSettings;
.super Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# static fields
.field public static mIsForegroundBtSettings:Z

.field private static mLocalAdapterName:Ljava/lang/String;

.field private static mLocalAdapterNameTemp:Ljava/lang/String;

.field private static mNewOrientation:I

.field private static mOldOrientation:I


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/sec_settings/bluetooth/BluetoothEnabler;

.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private mBluetoothScanItem:Landroid/preference/Preference;

.field private mButtonView:Landroid/widget/TextView;

.field private mDeviceName:Landroid/app/DialogFragment;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMyDeviceCategory:Landroid/preference/PreferenceCategory;

.field mMyDevicePreference:Landroid/preference/CheckBoxPreference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScan:Landroid/view/MenuItem;

.field mSelectedDevicePreference:Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

.field private mShowVisibileTimeoutFragment:Z

.field private mTimeOutFragment:Landroid/app/DialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 117
    sput-object v1, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 118
    sput-object v1, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;

    .line 125
    new-instance v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 660
    new-instance v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 149
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/bluetooth/BluetoothSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/sec_settings/bluetooth/BluetoothSettings;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mButtonView:Landroid/widget/TextView;

    return-object p1
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/sec_settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 478
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 480
    invoke-virtual {p0, p3}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/sec_settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 483
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 484
    return-void
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 488
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 489
    .local v0, messageId:I
    const-string v4, "BluetoothSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scanState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    packed-switch p1, :pswitch_data_0

    .line 625
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 626
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 627
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 628
    sget-boolean v4, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v4, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 630
    :cond_1
    :goto_1
    return-void

    .line 493
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 494
    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 495
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 498
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    if-nez v4, :cond_2

    .line 499
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    .line 501
    :cond_2
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    const v5, 0x7f0901b8

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 502
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    .line 503
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 504
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDeviceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 507
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_3

    .line 509
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    .line 512
    :cond_3
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    .line 513
    sget-object v4, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 514
    sget-object v4, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterNameTemp:Ljava/lang/String;

    sput-object v4, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 515
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    sget-object v5, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 520
    :goto_2
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 521
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f020112

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 525
    :goto_3
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 527
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 529
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_4

    .line 530
    new-instance v4, Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 532
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 533
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 538
    :cond_4
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_9

    .line 539
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 543
    :goto_4
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0901d2

    sget-object v6, Lcom/android/sec_settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/sec_settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/sec_settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 546
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 548
    .local v2, numberOfPairedDevices:I
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 551
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_a

    .line 552
    new-instance v4, Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/sec_settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 556
    :goto_5
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0901d3

    sget-object v6, Lcom/android/sec_settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/sec_settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/sec_settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 559
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 560
    .local v1, numberOfAvailableDevices:I
    iput-boolean v9, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 562
    if-nez v1, :cond_b

    .line 563
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 564
    iput-boolean v8, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 569
    :goto_6
    if-nez v2, :cond_5

    .line 570
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 571
    if-ne p2, v9, :cond_c

    .line 572
    const-string v4, "BluetoothSettings"

    const-string v5, "updateContent :: startScanning()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iput-boolean v8, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 574
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 582
    :cond_5
    :goto_7
    sget-boolean v4, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v4, :cond_d

    .line 583
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    if-nez v4, :cond_6

    .line 584
    new-instance v4, Lcom/android/sec_settings/bluetooth/BluetoothSettings$2;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/sec_settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothSettings;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    .line 598
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 599
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    const v5, 0x7f0400de

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 600
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 602
    :cond_6
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 518
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_7
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    sget-object v5, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 523
    :cond_8
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f020123

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    goto/16 :goto_3

    .line 541
    :cond_9
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_4

    .line 554
    .restart local v2       #numberOfPairedDevices:I
    :cond_a
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_5

    .line 566
    .restart local v1       #numberOfAvailableDevices:I
    :cond_b
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v4, v8}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    goto :goto_6

    .line 576
    :cond_c
    iget-boolean v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_5

    .line 577
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 604
    :cond_d
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    if-eqz v4, :cond_e

    .line 605
    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 606
    :cond_e
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 611
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f0900be

    .line 612
    goto/16 :goto_0

    .line 615
    :pswitch_2
    const v0, 0x7f0901dc

    .line 616
    sget-boolean v4, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v4, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_0

    .line 621
    :pswitch_3
    const v0, 0x7f0900bd

    goto/16 :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateOptionsMenu()V
    .locals 7

    .prologue
    const v6, 0x7f09009e

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 405
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-nez v2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 414
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f09061e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 417
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f02015d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 420
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f02013b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 424
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const v3, 0x7f02013d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 432
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 433
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 434
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_4

    const v0, 0x7f0200a5

    .line 435
    .local v0, iconId:I
    :goto_1
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 434
    .end local v0           #iconId:I
    :cond_4
    const v0, 0x7f0200a3

    goto :goto_1

    .line 437
    .end local v1           #isDiscovering:Z
    :cond_5
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 438
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 177
    sget-boolean v5, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v5, :cond_0

    .line 178
    const v5, 0x7f070016

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 212
    :goto_0
    return-void

    .line 181
    :cond_0
    const v5, 0x7f070017

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 185
    .local v2, activity:Landroid/app/Activity;
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, actionBarSwitch:Landroid/widget/Switch;
    instance-of v5, v2, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_2

    move-object v4, v2

    .line 188
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 189
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_2

    .line 190
    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 192
    .local v3, padding:I
    invoke-virtual {v1, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 193
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 195
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 202
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    new-instance v5, Lcom/android/sec_settings/bluetooth/BluetoothEnabler;

    invoke-direct {v5, v2, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/sec_settings/bluetooth/BluetoothEnabler;

    .line 204
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 207
    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 209
    .local v0, EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 740
    const v0, 0x7f0908f7

    return v0
.end method

.method initDevicePreference(Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 684
    invoke-virtual {p1}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 685
    .local v0, cachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 165
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mOldOrientation:I

    .line 173
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 154
    instance-of v0, p1, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;

    sput-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 155
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 634
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 635
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 638
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;->dismissDisconnectDialog()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

    .line 645
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 320
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->updateOptionsMenu()V

    .line 321
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 694
    const-string v0, "BluetoothSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 696
    if-eqz p1, :cond_0

    .line 698
    sget-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_0

    .line 699
    const-string v0, "VISIBILE_TIME_OUT_FRAGEMENT_SHOWN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 702
    sget-object v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 704
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 705
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate-mLocalAdapterName ( NULL ), ro.product.model( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 325
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 326
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 328
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_1

    const v2, 0x7f09061e

    .line 330
    .local v2, textId:I
    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    .line 332
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->updateOptionsMenu()V

    .line 336
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-ne v5, v3, :cond_2

    .line 355
    :goto_2
    return-void

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_0
    move v0, v4

    .line 325
    goto :goto_0

    .line 328
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_1
    const v2, 0x7f09009e

    goto :goto_1

    .line 343
    .restart local v2       #textId:I
    :cond_2
    const/4 v3, 0x2

    const v5, 0x7f09009a

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f02009e

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 347
    const/4 v3, 0x3

    const v5, 0x7f090095

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f020098

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 351
    const/4 v3, 0x4

    const v5, 0x7f0900b5

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f020097

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 354
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 727
    invoke-super {p0}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 729
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onDeviceBondStateChanged(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 656
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 657
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 658
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 456
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mSelectedDevicePreference:Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;

    .line 458
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/sec_settings/bluetooth/BluetoothDevicePreference;)V

    .line 459
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 399
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 362
    :pswitch_0
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    const-string v2, "BluetoothSettings"

    const-string v3, "onOptionsItemSelected :: startScanning()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 368
    :cond_1
    const-string v2, "BluetoothSettings"

    const-string v3, "onOptionsItemSelected :: stopScanning()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 378
    :pswitch_1
    new-instance v2, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    .line 379
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :pswitch_2
    new-instance v2, Lcom/android/sec_settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v2}, Lcom/android/sec_settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    .line 389
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "visibility timeout"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/sec_settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/sec_settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/BluetoothEnabler;->pause()V

    .line 305
    :cond_0
    sget-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v0, :cond_1

    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mOldOrientation:I

    .line 315
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothScanItem:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    const-string v0, "BluetoothSettings"

    const-string v1, "onPreferenceTreeClick(mBluetoothScanItem) :: startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 473
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 471
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 218
    sget-boolean v2, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v2, :cond_1

    .line 219
    sput-boolean v5, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 220
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/sec_settings/bluetooth/BluetoothEnabler;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/sec_settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/BluetoothEnabler;->resume()V

    .line 224
    :cond_0
    invoke-super {p0}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v2, v3}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 234
    sget-boolean v2, Lcom/android/sec_settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v2, :cond_3

    .line 235
    invoke-super {p0}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 239
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->finish()V

    .line 297
    :cond_4
    :goto_0
    return-void

    .line 245
    :cond_5
    iget-boolean v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    if-eqz v2, :cond_6

    .line 247
    iput-boolean v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mShowVisibileTimeoutFragment:Z

    .line 260
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v2

    sput v2, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mNewOrientation:I

    .line 263
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 264
    .local v1, intent:Landroid/content/Intent;
    sget v2, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mOldOrientation:I

    sget v3, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mNewOrientation:I

    if-eq v2, v3, :cond_a

    .line 265
    if-nez v1, :cond_7

    .line 266
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 268
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    const-string v2, "DIALOG_OPEN"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    check-cast v2, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;->saveStateOnActivityFinished()V

    .line 275
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->finish()V

    .line 277
    sget v2, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mNewOrientation:I

    sput v2, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mOldOrientation:I

    goto :goto_0

    .line 272
    :cond_9
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 273
    const-string v2, "DIALOG_OPEN"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 278
    :cond_a
    if-eqz v1, :cond_4

    .line 281
    const-string v2, "DIALOG_OPEN"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, dialogType:I
    if-nez v0, :cond_b

    .line 283
    const-string v2, "DIALOG_OPEN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 284
    new-instance v2, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/sec_settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    .line 285
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mDeviceName:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :cond_b
    if-ne v0, v5, :cond_4

    .line 287
    const-string v2, "DIALOG_OPEN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 288
    new-instance v2, Lcom/android/sec_settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v2}, Lcom/android/sec_settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    .line 289
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "visibility timeout"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mTimeOutFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "VISIBILE_TIME_OUT_FRAGEMENT_SHOWN"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    :cond_0
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 721
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 649
    invoke-super {p0, p1}, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 651
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 652
    return-void
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 448
    :cond_0
    const-string v0, "BluetoothSettings"

    const-string v1, "Do startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 450
    return-void
.end method
