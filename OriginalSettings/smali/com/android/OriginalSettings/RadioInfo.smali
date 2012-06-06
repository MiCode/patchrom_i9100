.class public Lcom/android/OriginalSettings/RadioInfo;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/RadioInfo$23;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 77
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 140
    iput-boolean v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    .line 143
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$1;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 175
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$2;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 803
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$7;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 818
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$8;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 833
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$9;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 849
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$10;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 856
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$11;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 865
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$12;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 885
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$13;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 894
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$14;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 920
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$15;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 945
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$16;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 968
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$17;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 975
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$18;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 988
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$19;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 994
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$20;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1002
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$21;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1008
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$22;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1021
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/OriginalSettings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/OriginalSettings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private httpClientTest()V
    .locals 4

    .prologue
    .line 696
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 698
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 700
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 701
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 705
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 709
    :goto_1
    return-void

    .line 703
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 907
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 957
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 932
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final pingHostname()V
    .locals 2

    .prologue
    .line 676
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 678
    if-nez v0, :cond_0

    .line 679
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 690
    :goto_0
    return-void

    .line 681
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 685
    :catch_1
    move-exception v0

    .line 686
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 687
    :catch_2
    move-exception v0

    .line 688
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 4

    .prologue
    .line 656
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 657
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 659
    if-nez v0, :cond_0

    .line 660
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 669
    :goto_0
    return-void

    .line 662
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 666
    :catch_1
    move-exception v0

    .line 667
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 713
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    return-void
.end method

.method private final updateDataState()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 571
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 572
    const v0, 0x7f0b00af

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    packed-switch v1, :pswitch_data_0

    .line 589
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    return-void

    .line 576
    :pswitch_0
    const v0, 0x7f0b00ad

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :pswitch_1
    const v0, 0x7f0b00ac

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 582
    :pswitch_2
    const v0, 0x7f0b00ab

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 585
    :pswitch_3
    const v0, 0x7f0b00ae

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 2

    .prologue
    .line 618
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    return-void
.end method

.method private final updateDataStats2()V
    .locals 12

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 637
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 638
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 639
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 640
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    .line 642
    const v9, 0x7f0b00b0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 643
    const v10, 0x7f0b00b1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    iget-object v10, p0, Lcom/android/OriginalSettings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    return-void

    .line 419
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 3

    .prologue
    .line 911
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 915
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 916
    return-void

    .line 912
    :cond_0
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 450
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 451
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 452
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 453
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 454
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 455
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b00b4

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v8, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b00b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :goto_2
    return-void

    .line 455
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 460
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 461
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 462
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 463
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 464
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 465
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 466
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 467
    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_4

    const-string v0, "unknown"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_5

    const-string v0, "unknown"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v3, v8, :cond_6

    const-string v0, "unknown"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LONG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, v8, :cond_7

    const-string v0, "unknown"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 482
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 3

    .prologue
    .line 961
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 965
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 966
    return-void

    .line 962
    :cond_0
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    if-eqz p1, :cond_2

    .line 492
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    return-void

    .line 495
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 496
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 500
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 3

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 594
    const-string v1, "gsm.network.type"

    const v2, 0x7f0b00af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    return-void
.end method

.method private final updatePdpList()V
    .locals 2

    .prologue
    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    return-void
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 550
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 551
    const v0, 0x7f0b00af

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    sget-object v3, Lcom/android/OriginalSettings/RadioInfo$23;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    return-void

    .line 555
    :pswitch_0
    const v0, 0x7f0b00a8

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_1
    const v0, 0x7f0b00a9

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :pswitch_2
    const v0, 0x7f0b00aa

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 3

    .prologue
    const v2, 0x7f0b00af

    .line 716
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 718
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 719
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 720
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 722
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    new-instance v1, Lcom/android/OriginalSettings/RadioInfo$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/RadioInfo$3;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 733
    new-instance v2, Lcom/android/OriginalSettings/RadioInfo$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/OriginalSettings/RadioInfo$4;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 740
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 742
    new-instance v2, Lcom/android/OriginalSettings/RadioInfo$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/OriginalSettings/RadioInfo$5;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 749
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 751
    new-instance v2, Lcom/android/OriginalSettings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/OriginalSettings/RadioInfo$6;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 758
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 759
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0096

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void

    .line 412
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f0b00af

    .line 603
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 605
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 606
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 611
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    return-void
.end method

.method private final updateServiceState()V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 520
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 521
    const v0, 0x7f0b00af

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 523
    packed-switch v2, :pswitch_data_0

    .line 536
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f0b00a6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 544
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    return-void

    .line 525
    :pswitch_0
    const v0, 0x7f0b00a1

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 529
    :pswitch_1
    const v0, 0x7f0b00a3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 532
    :pswitch_2
    const v0, 0x7f0b00a4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f0b00a7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 427
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 428
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 430
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 437
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 439
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 441
    if-ne v4, v2, :cond_3

    .line 443
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0b00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b00b3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private updateSmsOverImsState()V
    .locals 3

    .prologue
    .line 936
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 941
    return-void

    .line 937
    :cond_0
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 240
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    const v4, 0x7f04007e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->setContentView(I)V

    .line 244
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 247
    const v4, 0x7f080171

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 248
    const v4, 0x7f080172

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->number:Landroid/widget/TextView;

    .line 249
    const v4, 0x7f080181

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 250
    const v4, 0x7f080173

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 251
    const v4, 0x7f08017b

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 252
    const v4, 0x7f08017c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 253
    const v4, 0x7f08017d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 254
    const v4, 0x7f08017e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->network:Landroid/widget/TextView;

    .line 255
    const v4, 0x7f080178

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 256
    const v4, 0x7f08017f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 257
    const v4, 0x7f080180

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 258
    const v4, 0x7f080179

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 259
    const v4, 0x7f08017a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 261
    const v4, 0x7f080182

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 262
    const v4, 0x7f080183

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 263
    const v4, 0x7f080184

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 264
    const v4, 0x7f080185

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 265
    const v4, 0x7f080188

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 266
    const v4, 0x7f080186

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 267
    const v4, 0x7f080187

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->received:Landroid/widget/TextView;

    .line 268
    const v4, 0x7f080191

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 269
    const v4, 0x7f080193

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 271
    const v4, 0x7f080175

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f080176

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f080177

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 275
    const v4, 0x7f080189

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 276
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 278
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 279
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 282
    const v4, 0x7f08018a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 283
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v4, 0x7f08018b

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 286
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v4, 0x7f08018c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 289
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    const v4, 0x7f08018d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 292
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v4, 0x7f080174

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 295
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v4, 0x7f08018f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 297
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const v4, 0x7f080190

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 299
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v4, 0x7f080192

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 301
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v4, 0x7f080194

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 304
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 306
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, oemInfoIntent:Landroid/content/Intent;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 308
    .local v2, oemInfoIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 313
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 314
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 315
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 317
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 319
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 322
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 323
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 368
    const v0, 0x7f0b014d

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 371
    const v0, 0x7f0b009d

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 373
    const/4 v0, 0x2

    const v1, 0x7f0b009e

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 375
    const/4 v0, 0x3

    const v1, 0x7f0b009f

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 377
    const/4 v0, 0x4

    const v1, 0x7f0b00a0

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 379
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 381
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 358
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 360
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onPause: unregister phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 364
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 387
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 388
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 389
    .local v1, state:I
    const/4 v2, 0x1

    .line 391
    .local v2, visible:Z
    packed-switch v1, :pswitch_data_0

    .line 400
    :pswitch_0
    const/4 v2, 0x0

    .line 403
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    const/4 v3, 0x1

    return v3

    .line 394
    :pswitch_1
    const-string v3, "Disable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 397
    :pswitch_2
    const-string v3, "Enable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 327
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 329
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePhoneState()V

    .line 330
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSignalStrength()V

    .line 331
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateMessageWaiting()V

    .line 332
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateCallRedirect()V

    .line 333
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateServiceState()V

    .line 334
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 335
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataState()V

    .line 336
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats()V

    .line 337
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats2()V

    .line 338
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePowerState()V

    .line 339
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateImsRegRequiredState()V

    .line 340
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSmsOverImsState()V

    .line 341
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateLteRamDumpState()V

    .line 342
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateProperties()V

    .line 343
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDnsCheckState()V

    .line 345
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onResume: register phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 348
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 354
    return-void
.end method
