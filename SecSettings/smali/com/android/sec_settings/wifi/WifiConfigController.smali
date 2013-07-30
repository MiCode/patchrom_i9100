.class public Lcom/android/sec_settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DBG:Z

.field private static final WAPI_PSK_TYPE_VALUES:[I


# instance fields
.field private mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAutoGenFirstTime:Z

.field private mCWError:I

.field private mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHasWapiAsCert:Z

.field private mHasWapiUserCert:Z

.field private mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mRetry:Z

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/sec_settings/wifi/WifiConfigController;->DBG:Z

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/sec_settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/sec_settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mCWError:I

    .line 150
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 151
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 152
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 158
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 172
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mHasWapiAsCert:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mHasWapiUserCert:Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 177
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 178
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    .line 1335
    new-instance v0, Lcom/android/sec_settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/WifiConfigController$1;-><init>(Lcom/android/sec_settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 1364
    new-instance v0, Lcom/android/sec_settings/wifi/WifiConfigController$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/WifiConfigController$2;-><init>(Lcom/android/sec_settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 210
    invoke-direct/range {p0 .. p5}, Lcom/android/sec_settings/wifi/WifiConfigController;->initController(Lcom/android/sec_settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/wifi/WifiConfigController;)Lcom/android/sec_settings/wifi/WifiConfigUiBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/wifi/WifiConfigController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/wifi/WifiConfigController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->restartFocusedViewInput()V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04011e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 635
    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 637
    return-void
.end method

.method private generateBlankFields(Ljava/net/InetAddress;)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x18

    .line 866
    const-string v0, "WifiConfigController"

    const-string v2, "generateBlankFields"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0902c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    :try_start_0
    invoke-static {p1, v1}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 890
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 891
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    :cond_1
    return-void

    .line 876
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 877
    if-ltz v0, :cond_3

    const/16 v2, 0x20

    if-le v0, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    .line 882
    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    goto :goto_1

    .line 892
    :catch_1
    move-exception v0

    goto :goto_1

    .line 880
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    const/4 v1, -0x1

    .line 1480
    if-nez p1, :cond_1

    move v0, v1

    .line 1489
    :cond_0
    :goto_0
    return v0

    .line 1483
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1484
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1489
    goto :goto_0
.end method

.method private initController(Lcom/android/sec_settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V
    .locals 24
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    .line 221
    const-string v20, "ro.csc.sales_code"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 222
    .local v15, salesCode:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    .line 223
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/sec_settings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 225
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 226
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 227
    if-nez p3, :cond_2

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 229
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mEdit:Z

    .line 230
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    .line 232
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 234
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 237
    .local v14, resources:Landroid/content/res/Resources;
    const-string v20, "enterprise_policy"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 241
    const-string v20, "wifi"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0366

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b035f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f09023c

    invoke-interface/range {v20 .. v21}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b032e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0330

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b034e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0354

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 265
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v20, 0x7f040130

    const v21, 0x1020014

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a001b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v4, v6, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 268
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 273
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090356

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 429
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090357

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 433
    :cond_1
    return-void

    .line 227
    .end local v6           #context:Landroid/content/Context;
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    move/from16 v20, v0

    goto/16 :goto_0

    .line 270
    .restart local v6       #context:Landroid/content/Context;
    .restart local v14       #resources:Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0189

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 275
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b032d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 279
    .local v7, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/sec_settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 283
    .local v19, state:Landroid/net/NetworkInfo$DetailedState;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 287
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b037e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 292
    .local v8, group2:Landroid/view/ViewGroup;
    :goto_3
    if-eqz v19, :cond_6

    .line 293
    const v20, 0x7f09026c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/sec_settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 296
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/sec_settings/wifi/AccessPoint;->getLevel()I

    move-result v12

    .line 297
    .local v12, level:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_8

    .line 298
    const v20, 0x7f0a0025

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 299
    .local v17, signal:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v12, v0, :cond_7

    .line 300
    const-string v20, "WifiConfigController"

    const-string v21, "Force level of wifi signal"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v12, v20, -0x1

    .line 303
    :cond_7
    const v20, 0x7f09026b

    aget-object v21, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 306
    .end local v17           #signal:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/sec_settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 307
    .local v10, info:Landroid/net/wifi/WifiInfo;
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 308
    const v20, 0x7f09026d

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Mbps"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 311
    :cond_9
    const v20, 0x7f09026a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/sec_settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 327
    const/16 v16, 0x0

    .line 328
    .local v16, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 330
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    .line 332
    const/16 v16, 0x1

    .line 337
    :goto_4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 338
    .local v3, a:Ljava/net/InetAddress;
    const v20, 0x7f09026e

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v8, v1, v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_5

    .line 289
    .end local v3           #a:Ljava/net/InetAddress;
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #group2:Landroid/view/ViewGroup;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v12           #level:I
    .end local v16           #showAdvancedFields:Z
    :cond_a
    move-object v8, v7

    .restart local v8       #group2:Landroid/view/ViewGroup;
    goto/16 :goto_3

    .line 334
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v10       #info:Landroid/net/wifi/WifiInfo;
    .restart local v12       #level:I
    .restart local v16       #showAdvancedFields:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 360
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_c
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    .line 362
    const/16 v16, 0x1

    .line 368
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v20, v0

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 369
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->showProxyFields()V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b037c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b037d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    if-eqz v16, :cond_f

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b037d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b037e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :cond_f
    const-string v20, "TGY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string v21, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v13

    .line 383
    .local v13, pos:I
    if-ltz v13, :cond_10

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 387
    .end local v13           #pos:I
    :cond_10
    const-string v20, "SIM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 388
    const-string v20, "SFR WiFi Mobile"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 389
    sget-boolean v20, Lcom/android/sec_settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v20, :cond_11

    .line 390
    const-string v20, "WifiConfigController"

    const-string v21, "--Found access point SFR WiFi Mobile"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const-string v21, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v13

    .line 394
    .restart local v13       #pos:I
    if-ltz v13, :cond_12

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 400
    .end local v13           #pos:I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v20, v0

    if-nez v20, :cond_14

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090356

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 364
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 403
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_14
    if-nez v19, :cond_17

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 404
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090354

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 413
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 417
    .local v18, ssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 419
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/sec_settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v11

    .line 420
    .local v11, isVendorAp:Z
    if-nez v11, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f090355

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 410
    .end local v11           #isVendorAp:Z
    .end local v18           #ssid:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0b0365

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 827
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 828
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 832
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 833
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v0

    .line 834
    if-eqz v0, :cond_1

    move v0, v1

    .line 862
    :goto_1
    return v0

    .line 828
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 843
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 845
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 846
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 850
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 851
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/sec_settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 855
    :goto_3
    if-nez v0, :cond_4

    .line 856
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 862
    goto :goto_1

    .line 839
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 852
    :catch_0
    move-exception v0

    move v0, v1

    .line 853
    :goto_4
    const v3, 0x7f0900ec

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 859
    goto :goto_1

    .line 852
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1296
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1297
    const v0, 0x7f09027e

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1299
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1300
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 1301
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1309
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1311
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1312
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1313
    return-void

    .line 1303
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1304
    aput-object v2, v0, v4

    .line 1305
    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    if-nez p0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v5

    .line 188
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    .line 189
    goto :goto_0

    .line 192
    :cond_2
    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v7, 0x2

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x3

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 194
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 195
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 196
    goto :goto_0

    .line 194
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1273
    .local v0, focusedView:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 1276
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1277
    :cond_2
    if-eqz v0, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiConfigController;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1287
    if-eqz p1, :cond_0

    .line 1288
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1289
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1293
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 1316
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/sec_settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1319
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1322
    if-eqz p2, :cond_0

    .line 1324
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1325
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1326
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1327
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1332
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1325
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 6

    .prologue
    const v3, 0x7f0b0367

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1159
    const/4 v0, 0x0

    .line 1161
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0365

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_a

    .line 1164
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1167
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 1168
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0368

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1171
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1172
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0369

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1173
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1174
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b036a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1176
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1177
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b036b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1178
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1179
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b036c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1180
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1182
    :cond_0
    if-eqz v1, :cond_5

    .line 1183
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1184
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1185
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1187
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1193
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1194
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1201
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1203
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1204
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1210
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1211
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1225
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1226
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1227
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1228
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1229
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1230
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1231
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1235
    :cond_6
    return-void

    .line 1206
    :cond_7
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1213
    :cond_8
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1217
    :cond_9
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0b0361

    const v5, 0x7f0b0360

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1238
    const/4 v0, 0x0

    .line 1240
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b035d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1243
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1246
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1247
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0362

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1251
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1252
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0363

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1253
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1254
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0364

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1255
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1257
    :cond_0
    if-eqz v1, :cond_1

    .line 1258
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1259
    if-eqz v0, :cond_1

    .line 1260
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    :cond_1
    :goto_1
    return-void

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const v8, 0x7f0b0372

    const v7, 0x7f0b0371

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 967
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v0, :cond_3

    .line 975
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 978
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 983
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_4

    .line 987
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 989
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 990
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 991
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 992
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 997
    :goto_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 998
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v9, :cond_4

    .line 1001
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f09027d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1039
    :cond_4
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 1040
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 994
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1045
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_8

    .line 1048
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    const-string v1, "TTLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    const-string v1, "PWD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    const-string v1, "SIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    const-string v1, "AKA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    const-string v1, "FAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1064
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1066
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1067
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1068
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b036f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 1069
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1070
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1071
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1072
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 1073
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1075
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v9, :cond_b

    .line 1079
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sec_settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1083
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 1084
    if-eqz v1, :cond_7

    .line 1085
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v3, "fast_provisioning="

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1088
    :cond_7
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 1089
    if-eqz v1, :cond_a

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1090
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v3, "auth="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1095
    :goto_2
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "keystore://CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    :goto_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v9, :cond_8

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1112
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1114
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1115
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1121
    :cond_8
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0373

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1125
    const-string v0, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1126
    :cond_9
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b036e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0370

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0373

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0374

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0377

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0378

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1143
    :goto_4
    const-string v0, "FAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1144
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b036e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1150
    :goto_5
    const-string v0, "PWD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0370

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0b0374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1092
    :cond_a
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-direct {p0, v2, v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1103
    :cond_b
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v1, "MSCHAPV2"

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1135
    :cond_c
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0370

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0373

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0374

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0377

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0378

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1148
    :cond_d
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b036e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 6
    .parameter

    .prologue
    const v3, 0x7f0902bf

    const v2, 0x7f0902be

    const v1, 0x7f0902bc

    const/4 v0, 0x0

    .line 904
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 963
    :cond_0
    :goto_0
    return v0

    .line 906
    :cond_1
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 907
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    goto :goto_0

    .line 911
    :cond_2
    :try_start_0
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 912
    iget-boolean v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v5, :cond_3

    .line 913
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 914
    invoke-direct {p0, v4}, Lcom/android/sec_settings/wifi/WifiConfigController;->generateBlankFields(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 923
    if-ltz v1, :cond_4

    const/16 v5, 0x20

    if-le v1, v5, :cond_5

    :cond_4
    move v0, v3

    .line 924
    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    move v0, v1

    .line 917
    goto :goto_0

    .line 926
    :cond_5
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v4, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 931
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 934
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 938
    new-instance v3, Landroid/net/RouteInfo;

    invoke-direct {v3, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 940
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 942
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 944
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 948
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 953
    :goto_1
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 956
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 960
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_0

    .line 927
    :catch_1
    move-exception v0

    move v0, v3

    .line 928
    goto/16 :goto_0

    .line 935
    :catch_2
    move-exception v0

    .line 936
    const v0, 0x7f0902bd

    goto/16 :goto_0

    .line 945
    :catch_3
    move-exception v0

    move v0, v2

    .line 946
    goto/16 :goto_0

    .line 950
    :cond_6
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 957
    :catch_4
    move-exception v0

    move v0, v2

    .line 958
    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/sec_settings/wifi/WifiConfigController$3;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiConfigController$3;-><init>(Lcom/android/sec_settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1409
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1414
    return-void
.end method

.method public enableSubmitIfAppropriate()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x8

    const/4 v7, 0x2

    .line 641
    sget-boolean v5, Lcom/android/sec_settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiConfigController"

    const-string v6, "enableSubmitIfAppropriate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/sec_settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/sec_settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v3

    .line 644
    .local v3, submit:Landroid/widget/Button;
    if-nez v3, :cond_1

    .line 645
    const-string v5, "WifiConfigController"

    const-string v6, "submit button is not set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_0
    return-void

    .line 650
    :cond_1
    const/4 v4, 0x0

    .line 651
    .local v4, trimedSsidLength:I
    const/4 v0, 0x1

    .line 652
    .local v0, enabled:Z
    const/4 v2, 0x0

    .line 654
    .local v2, passwordInvalid:Z
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v5, :cond_11

    .line 656
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 657
    .local v1, passLen:I
    iget-boolean v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v5, :cond_a

    .line 658
    iget v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v5, v7, :cond_3

    if-lez v1, :cond_3

    if-ge v1, v8, :cond_3

    .line 660
    sget-boolean v5, Lcom/android/sec_settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiConfigController"

    const-string v6, "password invalid (retry dialog)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_2
    const/4 v2, 0x1

    .line 677
    .end local v1           #passLen:I
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_5

    .line 678
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 679
    const/4 v0, 0x0

    .line 681
    :cond_4
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 684
    :cond_5
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v5

    if-nez v5, :cond_6

    .line 685
    const/4 v0, 0x0

    .line 688
    :cond_6
    sget-boolean v5, Lcom/android/sec_settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRetry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " password invalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_7
    iget-boolean v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v5, :cond_12

    if-eqz v2, :cond_12

    .line 690
    const/4 v0, 0x0

    .line 695
    :cond_8
    :goto_2
    iget-boolean v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-nez v5, :cond_9

    if-nez v4, :cond_9

    .line 696
    const/4 v0, 0x0

    .line 699
    :cond_9
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 663
    .restart local v1       #passLen:I
    :cond_a
    iget v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    iget v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v5, v7, :cond_e

    if-ge v1, v8, :cond_e

    .line 665
    :cond_c
    sget-boolean v5, Lcom/android/sec_settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_d

    const-string v5, "WifiConfigController"

    const-string v6, "password invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_d
    const/4 v2, 0x1

    goto :goto_1

    .line 667
    :cond_e
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v9, :cond_3

    iget v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v5, v7, :cond_3

    if-eqz v1, :cond_f

    if-lez v1, :cond_3

    if-ge v1, v8, :cond_3

    .line 670
    :cond_f
    sget-boolean v5, Lcom/android/sec_settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v5, :cond_10

    const-string v5, "WifiConfigController"

    const-string v6, "password invalid (saved ap)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 674
    .end local v1           #passLen:I
    :cond_11
    const-string v5, "WifiConfigController"

    const-string v6, "mPasswordView is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 691
    :cond_12
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v9, :cond_8

    :cond_13
    if-eqz v2, :cond_8

    .line 692
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x1

    const/16 v8, 0x22

    const/4 v6, 0x0

    .line 703
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v7, v9, :cond_0

    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    move-object v0, v5

    .line 823
    :goto_0
    return-object v0

    .line 707
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 709
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-nez v7, :cond_1

    .line 710
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 713
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 721
    :goto_1
    iget v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    move-object v0, v5

    .line 816
    goto :goto_0

    .line 714
    :cond_1
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-ne v7, v9, :cond_2

    .line 715
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 718
    :cond_2
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 723
    :pswitch_0
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 819
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 820
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 821
    new-instance v5, Landroid/net/LinkProperties;

    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v5, v6}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 727
    :pswitch_1
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 728
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 729
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 730
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 731
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v3

    .line 732
    .local v3, length:I
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 734
    .local v4, password:Ljava/lang/String;
    const/16 v5, 0xa

    if-eq v3, v5, :cond_4

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_5

    :cond_4
    const-string v5, "[0-9A-Fa-f]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 736
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v4, v5, v6

    goto :goto_2

    .line 738
    :cond_5
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_2

    .line 744
    .end local v3           #length:I
    .end local v4           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 745
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 746
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 747
    .restart local v4       #password:Ljava/lang/String;
    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 748
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 750
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 756
    .end local v4           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 757
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 758
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 759
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FAST"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 760
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fast_provisioning="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 761
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 764
    :cond_7
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_8

    const-string v5, ""

    :goto_3
    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 766
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_9

    const-string v5, ""

    :goto_4
    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 769
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_a

    const-string v5, ""

    :goto_5
    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 772
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_b

    .line 773
    .local v2, isEmptyKeyId:Z
    :goto_6
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_c

    const-string v5, ""

    :goto_7
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 775
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_d

    const-string v5, "0"

    :goto_8
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 777
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_e

    const-string v5, ""

    :goto_9
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 778
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-nez v5, :cond_f

    const-string v5, ""

    :goto_a
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 780
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-nez v5, :cond_10

    const-string v5, ""

    :goto_b
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 782
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 783
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 764
    .end local v2           #isEmptyKeyId:Z
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "auth="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 766
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://CACERT_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 769
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keystore://USRCERT_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    :cond_b
    move v2, v6

    .line 772
    goto/16 :goto_6

    .line 773
    .restart local v2       #isEmptyKeyId:Z
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 775
    :cond_d
    const-string v5, "1"

    goto/16 :goto_8

    .line 777
    :cond_e
    const-string v5, "keystore"

    goto/16 :goto_9

    .line 778
    :cond_f
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    .line 780
    :cond_10
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_b

    .line 788
    .end local v2           #isEmptyKeyId:Z
    :pswitch_4
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 789
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-eqz v5, :cond_11

    .line 790
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 791
    .restart local v4       #password:Ljava/lang/String;
    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 792
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 797
    .end local v4           #password:Ljava/lang/String;
    :cond_11
    :goto_c
    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-object v5, Lcom/android/sec_settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    aget v1, v5, v6

    .line 799
    .local v1, iType:I
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 794
    .end local v1           #iType:I
    .restart local v4       #password:Ljava/lang/String;
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_c

    .line 803
    .end local v4           #password:Ljava/lang/String;
    :pswitch_5
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 804
    iput v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 805
    iget v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 806
    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWapiAsCert.getSelectedItem() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_13

    const-string v5, ""

    :goto_d
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 810
    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWapiUserCert.getSelectedItemPosition() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const-string v5, "WifiConfigController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWapiUserCert.getSelectedItem() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_14

    const-string v5, ""

    :goto_e
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 808
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://WAPIAS_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    .line 812
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://WAPIUSR_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1395
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public isRetryDialog()Z
    .locals 1

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mRetry:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b037e

    .line 1423
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0333

    if-ne v0, v1, :cond_3

    .line 1425
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1427
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1428
    const-string v0, "WifiConfigController"

    const-string v1, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 1434
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1438
    if-ltz v1, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1434
    :cond_2
    const/16 v0, 0x80

    goto :goto_1

    .line 1441
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b037d

    if-ne v0, v1, :cond_0

    .line 1442
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1445
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1452
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1453
    iput p3, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1454
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1463
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/sec_settings/wifi/WifiConfigController$4;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiConfigController$4;-><init>(Lcom/android/sec_settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1471
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1472
    return-void

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1456
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1457
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1458
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1460
    :cond_3
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1477
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1419
    return-void
.end method

.method public updateShowPassword()V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0b0333

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 628
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 630
    :cond_0
    return-void

    .line 624
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method
