.class public Lcom/android/sec_settings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/RadioInfo$23;
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
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 140
    iput-boolean v2, p0, Lcom/android/sec_settings/RadioInfo;->mMwiValue:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/sec_settings/RadioInfo;->mCfiValue:Z

    .line 143
    new-instance v0, Lcom/android/sec_settings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$1;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 175
    new-instance v0, Lcom/android/sec_settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$2;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 804
    new-instance v0, Lcom/android/sec_settings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$7;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 819
    new-instance v0, Lcom/android/sec_settings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$8;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 834
    new-instance v0, Lcom/android/sec_settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$9;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 850
    new-instance v0, Lcom/android/sec_settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$10;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 857
    new-instance v0, Lcom/android/sec_settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$11;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 866
    new-instance v0, Lcom/android/sec_settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$12;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 886
    new-instance v0, Lcom/android/sec_settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$13;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 895
    new-instance v0, Lcom/android/sec_settings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$14;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 921
    new-instance v0, Lcom/android/sec_settings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$15;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 946
    new-instance v0, Lcom/android/sec_settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$16;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 969
    new-instance v0, Lcom/android/sec_settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$17;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 976
    new-instance v0, Lcom/android/sec_settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$18;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 989
    new-instance v0, Lcom/android/sec_settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$19;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 995
    new-instance v0, Lcom/android/sec_settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$20;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1003
    new-instance v0, Lcom/android/sec_settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$21;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1009
    new-instance v0, Lcom/android/sec_settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/RadioInfo$22;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1022
    const/16 v0, 0xe

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

    const-string v2, "LTE/CDMA/EvDo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Global"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LTE/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/sec_settings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/sec_settings/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/sec_settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/sec_settings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/sec_settings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/sec_settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/sec_settings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/sec_settings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/sec_settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/sec_settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/sec_settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/sec_settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/sec_settings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/sec_settings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/sec_settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/sec_settings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/sec_settings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/sec_settings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/sec_settings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/sec_settings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/sec_settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/sec_settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/sec_settings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/sec_settings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/sec_settings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/sec_settings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private httpClientTest()V
    .locals 4

    .prologue
    .line 697
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 699
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 701
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 702
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 706
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 710
    :goto_1
    return-void

    .line 704
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

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 908
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 958
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

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
    .line 933
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final pingHostname()V
    .locals 2

    .prologue
    .line 677
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 679
    if-nez v0, :cond_0

    .line 680
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 691
    :goto_0
    return-void

    .line 682
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 686
    :catch_1
    move-exception v0

    .line 687
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 688
    :catch_2
    move-exception v0

    .line 689
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 4

    .prologue
    .line 657
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 658
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

    .line 659
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 660
    if-nez v0, :cond_0

    .line 661
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 670
    :goto_0
    return-void

    .line 663
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 667
    :catch_1
    move-exception v0

    .line 668
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 714
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/sec_settings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method private final updateDataState()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 572
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 573
    const v0, 0x7f09005d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    packed-switch v1, :pswitch_data_0

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    return-void

    .line 577
    :pswitch_0
    const v0, 0x7f09005b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 580
    :pswitch_1
    const v0, 0x7f09005a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 583
    :pswitch_2
    const v0, 0x7f090059

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 586
    :pswitch_3
    const v0, 0x7f09005c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
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
    .line 619
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    return-void
.end method

.method private final updateDataStats2()V
    .locals 12

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 638
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 639
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 640
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 641
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    .line 643
    const v9, 0x7f09005e

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 644
    const v10, 0x7f09005f

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v10, p0, Lcom/android/sec_settings/RadioInfo;->sent:Landroid/widget/TextView;

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

    .line 647
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->received:Landroid/widget/TextView;

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

    .line 648
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    return-void

    .line 420
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 3

    .prologue
    .line 912
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isImsRegRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 916
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 917
    return-void

    .line 913
    :cond_0
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 451
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 452
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 453
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 454
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 455
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 456
    iget-object v3, p0, Lcom/android/sec_settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090062

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

    const v4, 0x7f090063

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

    .line 487
    :goto_2
    return-void

    .line 456
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 461
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 462
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 463
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 464
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 465
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 466
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 467
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 468
    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mLocation:Landroid/widget/TextView;

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

    .line 483
    :cond_8
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 3

    .prologue
    .line 962
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 966
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 967
    return-void

    .line 963
    :cond_0
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/sec_settings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
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
    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    if-eqz p1, :cond_2

    .line 493
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void

    .line 496
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

    .line 497
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 501
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 3

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 595
    const-string v1, "gsm.network.type"

    const v2, 0x7f09005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    return-void
.end method

.method private final updatePdpList()V
    .locals 2

    .prologue
    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    return-void
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 551
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 552
    const v0, 0x7f09005d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    sget-object v3, Lcom/android/sec_settings/RadioInfo$23;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 566
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    return-void

    .line 556
    :pswitch_0
    const v0, 0x7f090056

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :pswitch_1
    const v0, 0x7f090057

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    :pswitch_2
    const v0, 0x7f090058

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 554
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
    const v2, 0x7f09005d

    .line 717
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 719
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 720
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 721
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 723
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    new-instance v1, Lcom/android/sec_settings/RadioInfo$3;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/RadioInfo$3;-><init>(Lcom/android/sec_settings/RadioInfo;)V

    .line 734
    new-instance v2, Lcom/android/sec_settings/RadioInfo$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/sec_settings/RadioInfo$4;-><init>(Lcom/android/sec_settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 741
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 743
    new-instance v2, Lcom/android/sec_settings/RadioInfo$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/sec_settings/RadioInfo$5;-><init>(Lcom/android/sec_settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 750
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 752
    new-instance v2, Lcom/android/sec_settings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/sec_settings/RadioInfo$6;-><init>(Lcom/android/sec_settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 759
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 760
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 417
    return-void

    .line 413
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f09005d

    .line 604
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 606
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 607
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 612
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    return-void
.end method

.method private final updateServiceState()V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 521
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 522
    const v0, 0x7f09005d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    packed-switch v2, :pswitch_data_0

    .line 537
    :goto_0
    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f090054

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 545
    :goto_1
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    return-void

    .line 526
    :pswitch_0
    const v0, 0x7f09004f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 530
    :pswitch_1
    const v0, 0x7f090051

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :pswitch_2
    const v0, 0x7f090052

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f090055

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 524
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

    .line 428
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 429
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 431
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 438
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 440
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 442
    if-ne v4, v2, :cond_3

    .line 444
    :goto_0
    iget-object v2, p0, Lcom/android/sec_settings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f090060

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

    const v1, 0x7f090061

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private updateSmsOverImsState()V
    .locals 3

    .prologue
    .line 937
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 941
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 942
    return-void

    .line 938
    :cond_0
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 243
    const v4, 0x7f0400d2

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->setContentView(I)V

    .line 245
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 246
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 248
    const v4, 0x7f0b0247

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 249
    const v4, 0x7f0b0248

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->number:Landroid/widget/TextView;

    .line 250
    const v4, 0x7f0b0257

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 251
    const v4, 0x7f0b0249

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 252
    const v4, 0x7f0b0251

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 253
    const v4, 0x7f0b0252

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 254
    const v4, 0x7f0b0253

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 255
    const v4, 0x7f0b0254

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->network:Landroid/widget/TextView;

    .line 256
    const v4, 0x7f0b024e

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 257
    const v4, 0x7f0b0255

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 258
    const v4, 0x7f0b0256

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 259
    const v4, 0x7f0b024f

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 260
    const v4, 0x7f0b0250

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 262
    const v4, 0x7f0b0258

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 263
    const v4, 0x7f0b0259

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 264
    const v4, 0x7f0b025a

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 265
    const v4, 0x7f0b025b

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 266
    const v4, 0x7f0b025e

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 267
    const v4, 0x7f0b025c

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 268
    const v4, 0x7f0b025d

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->received:Landroid/widget/TextView;

    .line 269
    const v4, 0x7f0b0267

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 270
    const v4, 0x7f0b0269

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f0b024b

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f0b024c

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 274
    const v4, 0x7f0b024d

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 276
    const v4, 0x7f0b025f

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 277
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 279
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 280
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 281
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 283
    const v4, 0x7f0b0260

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 284
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v4, 0x7f0b0261

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 287
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const v4, 0x7f0b0262

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 290
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v4, 0x7f0b0263

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 293
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v4, 0x7f0b024a

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 296
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v4, 0x7f0b0265

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 298
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v4, 0x7f0b0266

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 300
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v4, 0x7f0b0268

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 302
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v4, 0x7f0b026a

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 305
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/sec_settings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 307
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, oemInfoIntent:Landroid/content/Intent;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 309
    .local v2, oemInfoIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 310
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 314
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 315
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 316
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 318
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 320
    iget-object v4, p0, Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/sec_settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 323
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 324
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    const v0, 0x7f090101

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 372
    const v0, 0x7f09004b

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 374
    const/4 v0, 0x2

    const v1, 0x7f09004c

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 376
    const/4 v0, 0x3

    const v1, 0x7f09004d

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 378
    const/4 v0, 0x4

    const v1, 0x7f09004e

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 380
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 382
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 361
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onPause: unregister phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 364
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 365
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 388
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 389
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/sec_settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 390
    .local v1, state:I
    const/4 v2, 0x1

    .line 392
    .local v2, visible:Z
    packed-switch v1, :pswitch_data_0

    .line 401
    :pswitch_0
    const/4 v2, 0x0

    .line 404
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    const/4 v3, 0x1

    return v3

    .line 395
    :pswitch_1
    const-string v3, "Disable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 398
    :pswitch_2
    const-string v3, "Enable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 392
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
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 330
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updatePhoneState()V

    .line 331
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateSignalStrength()V

    .line 332
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateMessageWaiting()V

    .line 333
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateCallRedirect()V

    .line 334
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateServiceState()V

    .line 335
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 336
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateDataState()V

    .line 337
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateDataStats()V

    .line 338
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateDataStats2()V

    .line 339
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updatePowerState()V

    .line 340
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateImsRegRequiredState()V

    .line 341
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateSmsOverImsState()V

    .line 342
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateLteRamDumpState()V

    .line 343
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateProperties()V

    .line 344
    invoke-direct {p0}, Lcom/android/sec_settings/RadioInfo;->updateDnsCheckState()V

    .line 346
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onResume: register phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 349
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 355
    return-void
.end method
