.class public Lcom/android/OriginalSettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final WAPI_PSK_TYPE_VALUES:[I


# instance fields
.field private final mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

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

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 23
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v19, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 138
    sget-object v19, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 139
    new-instance v19, Landroid/net/LinkProperties;

    invoke-direct/range {v19 .. v19}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 145
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 147
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 148
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    .line 149
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 162
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mHasWapiAsCert:Z

    .line 163
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mHasWapiUserCert:Z

    .line 1005
    new-instance v19, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 1038
    new-instance v19, Lcom/android/OriginalSettings/wifi/WifiConfigController$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 187
    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, salesCode:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    .line 189
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 191
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 192
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 193
    if-nez p3, :cond_2

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 195
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 198
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 201
    .local v12, resources:Landroid/content/res/Resources;
    const-string v19, "enterprise_policy"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0b024f

    invoke-interface/range {v19 .. v20}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0801fc

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0801fd

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f08021e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080223

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 220
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v19, 0x7f0400af

    const v20, 0x1020014

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070015

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v4, v6, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 223
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 227
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0b0293

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 355
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0b0294

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 361
    :cond_1
    new-instance v19, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 377
    return-void

    .line 193
    .end local v6           #context:Landroid/content/Context;
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    move/from16 v19, v0

    goto/16 :goto_0

    .line 225
    .restart local v6       #context:Landroid/content/Context;
    .restart local v12       #resources:Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0801e5

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 229
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080215

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f08020e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0801fb

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 238
    .local v7, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    .line 239
    .local v17, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v17, :cond_5

    .line 240
    const v19, 0x7f0b0262

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 243
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v11

    .line 244
    .local v11, level:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_6

    .line 245
    const v19, 0x7f07001d

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 246
    .local v15, signal:[Ljava/lang/String;
    const v19, 0x7f0b0261

    aget-object v20, v15, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 249
    .end local v15           #signal:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 250
    .local v9, info:Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 251
    const v19, 0x7f0b0263

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Mbps"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 254
    :cond_7
    const v19, 0x7f0b0260

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 256
    const/4 v14, 0x0

    .line 257
    .local v14, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 259
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v19, v0

    sget-object v20, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 261
    const/4 v14, 0x1

    .line 266
    :goto_3
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 267
    .local v3, a:Ljava/net/InetAddress;
    const v19, 0x7f0b0264

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 263
    .end local v3           #a:Ljava/net/InetAddress;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 271
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_9
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v19, v0

    sget-object v20, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 273
    const/4 v14, 0x1

    .line 278
    :goto_5
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 280
    const v19, 0x7f0b0277

    const v20, 0x7f0b0278

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 287
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v18

    .line 290
    .local v18, wp:Landroid/app/enterprise/WifiPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/app/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/app/enterprise/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showNetworkSetupFields()V

    .line 297
    .end local v18           #wp:Landroid/app/enterprise/WifiPolicy;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 298
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showProxyFields()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080232

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080233

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    if-eqz v14, :cond_d

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080233

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080234

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_d
    const-string v19, "TGY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 315
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0b0293

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 275
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 318
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_10
    if-nez v17, :cond_13

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_13

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0b0291

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 323
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 325
    const/4 v10, 0x1

    .line 334
    .local v10, isForget:Z
    const-string v19, "GT-I9100M"

    const-string v20, "GT-I9100"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 340
    :cond_11
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 343
    .local v16, ssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 346
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0b0292

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 321
    .end local v10           #isForget:Z
    .end local v16           #ssid:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080214

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wifi/WifiConfigController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, row:Landroid/view/View;
    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 382
    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 575
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 576
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 580
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 581
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 582
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 610
    .end local v6           #result:I
    :goto_1
    return v7

    .line 576
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 587
    :cond_1
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 591
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    .line 592
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 596
    .local v3, port:I
    const/4 v6, 0x0

    .line 598
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 599
    invoke-static {v2, v4, v1}, Lcom/android/OriginalSettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 603
    :goto_3
    if-nez v6, :cond_4

    .line 604
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 605
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 610
    goto :goto_1

    .line 587
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 600
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0b0138

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 607
    goto :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 965
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 966
    const v0, 0x7f0b0273

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 969
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 970
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 978
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 980
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 981
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 982
    return-void

    .line 972
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 973
    aput-object v2, v0, v4

    .line 974
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

    .line 170
    if-nez p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v5

    .line 174
    :cond_1
    const/4 v7, 0x5

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

    const/4 v7, 0x4

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 177
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

    .line 178
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 179
    goto :goto_0

    .line 177
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 986
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 989
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 992
    if-eqz p2, :cond_0

    .line 994
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 995
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 996
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 997
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1002
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 995
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 6

    .prologue
    const v3, 0x7f080216

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 857
    const/4 v0, 0x0

    .line 859
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 861
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_8

    .line 862
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 866
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080217

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 869
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 870
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080218

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 871
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 872
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080219

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 874
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 875
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08021a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 876
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 877
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08021b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 878
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 880
    :cond_0
    if-eqz v1, :cond_5

    .line 881
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 882
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 883
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 884
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 885
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
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

    .line 893
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 894
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 900
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 901
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 904
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_6

    .line 916
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 917
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 918
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 919
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 920
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 922
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 926
    :cond_6
    return-void

    .line 908
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showNetworkSetupFields()V
    .locals 7

    .prologue
    const v6, 0x7f080205

    const v5, 0x7f080203

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 830
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    .line 834
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 840
    if-ne v0, v3, :cond_2

    .line 841
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 847
    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 854
    :goto_1
    return-void

    .line 843
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 851
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f080210

    const v5, 0x7f08020f

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 929
    const/4 v0, 0x0

    .line 931
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08020d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 934
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 937
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 938
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080211

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 942
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 943
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080212

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 944
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 945
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080213

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 946
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 948
    :cond_0
    if-eqz v1, :cond_1

    .line 949
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_1

    .line 951
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    :cond_1
    :goto_1
    return-void

    .line 957
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 8

    .prologue
    const v7, 0x7f080205

    const v4, 0x7f0801ff

    const/16 v3, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 700
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 715
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 717
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 724
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_4

    .line 727
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f0b0272

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 766
    :cond_4
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 767
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 770
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 775
    const-string v0, "GT-I9100M"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 782
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070017

    const v2, 0x1090008

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 783
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 785
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 786
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 789
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 790
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 791
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 792
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 793
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 795
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_8

    .line 799
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 800
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 802
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 803
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth="

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 806
    :cond_7
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 821
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 822
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 823
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 11
    .parameter "linkProperties"

    .prologue
    const v9, 0x7f0b02a2

    const/4 v8, 0x0

    .line 614
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_1

    .line 663
    :cond_0
    :goto_0
    return v8

    .line 617
    :cond_1
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 618
    .local v6, ipAddr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 620
    .local v5, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 625
    const/4 v7, -0x1

    .line 627
    .local v7, networkPrefixLength:I
    :try_start_1
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    .line 631
    :goto_1
    if-ltz v7, :cond_2

    const/16 v10, 0x20

    if-le v7, v10, :cond_3

    .line 632
    :cond_2
    const v8, 0x7f0b02a3

    goto :goto_0

    .line 621
    .end local v7           #networkPrefixLength:I
    :catch_0
    move-exception v2

    .line 622
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b02a0

    goto :goto_0

    .line 634
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #networkPrefixLength:I
    :cond_3
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 637
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, gateway:Ljava/lang/String;
    const/4 v4, 0x0

    .line 640
    .local v4, gatewayAddr:Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 644
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 646
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, dns:Ljava/lang/String;
    const/4 v1, 0x0

    .line 649
    .local v1, dnsAddr:Ljava/net/InetAddress;
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 653
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 654
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 655
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    :try_start_4
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    .line 661
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 641
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 642
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b02a1

    goto :goto_0

    .line 650
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #dns:Ljava/lang/String;
    .restart local v1       #dnsAddr:Ljava/net/InetAddress;
    :catch_2
    move-exception v2

    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    move v8, v9

    .line 651
    goto :goto_0

    .line 658
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    move v8, v9

    .line 659
    goto/16 :goto_0

    .line 628
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #gateway:Ljava/lang/String;
    .end local v4           #gatewayAddr:Ljava/net/InetAddress;
    :catch_4
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1078
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1083
    return-void
.end method

.method chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableSubmitIfAppropriate()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 389
    const/4 v4, 0x0

    .line 390
    .local v4, ssidLength:I
    const/4 v5, 0x0

    .line 391
    .local v5, ssidSpaceCharCount:I
    const/4 v3, 0x0

    .line 393
    .local v3, ssid:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 394
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v4

    .line 397
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 398
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    .line 399
    add-int/lit8 v5, v5, 0x1

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1           #i:I
    :cond_1
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v6

    .line 405
    .local v6, submit:Landroid/widget/Button;
    if-nez v6, :cond_2

    .line 454
    :goto_1
    return-void

    .line 406
    :cond_2
    const/4 v0, 0x0

    .line 408
    .local v0, enabled:Z
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 409
    const/4 v0, 0x1

    .line 415
    :goto_2
    const/4 v2, 0x0

    .line 417
    .local v2, passwordInvalid:Z
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 418
    const/4 v0, 0x0

    .line 424
    :goto_3
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v7, :cond_5

    .line 425
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 411
    .end local v2           #passwordInvalid:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 420
    .restart local v2       #passwordInvalid:Z
    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    .line 431
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->chosenNetworkSetupMethod()I

    move-result v7

    if-nez v7, :cond_e

    iget v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    iget v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v7, v10, :cond_e

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-ge v7, v11, :cond_e

    .line 434
    :cond_7
    const/4 v2, 0x1

    .line 442
    :cond_8
    :goto_4
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v7, v9, :cond_c

    :cond_a
    if-eqz v2, :cond_c

    .line 445
    :cond_b
    const/4 v0, 0x0

    .line 449
    :cond_c
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v7, :cond_d

    if-ne v4, v5, :cond_d

    .line 450
    const/4 v0, 0x0

    .line 453
    :cond_d
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 436
    :cond_e
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v7, v9, :cond_8

    iget v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v7, v10, :cond_8

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-ge v7, v11, :cond_8

    .line 439
    :cond_f
    const/4 v2, 0x1

    goto :goto_4
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x22

    .line 457
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v5, v9, :cond_0

    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v5, :cond_0

    move-object v0, v4

    .line 571
    :goto_0
    return-object v0

    .line 461
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 463
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v5, :cond_1

    .line 464
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 467
    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 475
    :goto_1
    iget v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v5, :pswitch_data_0

    move-object v0, v4

    .line 564
    goto :goto_0

    .line 468
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v5, v9, :cond_2

    .line 469
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 472
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 477
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 567
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 568
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 569
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 482
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 483
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    .line 484
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 485
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 486
    .local v2, length:I
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_5

    :cond_4
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 490
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v7

    goto :goto_2

    .line 492
    :cond_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    goto :goto_2

    .line 498
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    .line 499
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 502
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 504
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 510
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 511
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 512
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 514
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_7

    const-string v4, ""

    :goto_3
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 516
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, ""

    :goto_4
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 519
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    :goto_5
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 522
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_6
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 525
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_b

    const-string v4, ""

    :goto_7
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 527
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_c

    const-string v4, ""

    :goto_8
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 529
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 530
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 514
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 516
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://CACERT_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 519
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://USRCERT_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 522
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 525
    :cond_b
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 527
    :cond_c
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 535
    :pswitch_4
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 536
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_d

    .line 537
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 538
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 539
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 544
    .end local v3           #password:Ljava/lang/String;
    :cond_d
    :goto_9
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v4, Lcom/android/OriginalSettings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    aget v1, v4, v5

    .line 546
    .local v1, iType:I
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 541
    .end local v1           #iType:I
    .restart local v3       #password:Ljava/lang/String;
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9

    .line 550
    .end local v3           #password:Ljava/lang/String;
    :pswitch_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 551
    iput v8, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 552
    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 553
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItem() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_f

    const-string v4, ""

    :goto_a
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 557
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiUserCert.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiUserCert.getSelectedItem() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ""

    :goto_b
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 555
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIAS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 559
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIUSR_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 475
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

.method getWpsConfig()Landroid/net/wifi/WpsInfo;
    .locals 3

    .prologue
    .line 674
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 675
    .local v0, config:Landroid/net/wifi/WpsInfo;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 686
    const/4 v1, 0x4

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 687
    const-string v1, "WifiConfigController"

    const-string v2, "WPS not selected type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :goto_0
    return-object v0

    .line 677
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 690
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080204

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 691
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 693
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 694
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 695
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 680
    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 683
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 691
    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f080234

    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801ff

    if-ne v0, v1, :cond_3

    .line 1094
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1096
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1104
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1100
    :cond_2
    const/16 v0, 0x80

    goto :goto_1

    .line 1105
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080233

    if-ne v0, v1, :cond_0

    .line 1106
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1107
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1109
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
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
    const v6, 0x7f080228

    const v5, 0x7f080227

    const v4, 0x7f080226

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1116
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1117
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1118
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1155
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1156
    :goto_1
    return-void

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1120
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showNetworkSetupFields()V

    .line 1123
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 1125
    if-eqz v0, :cond_0

    .line 1126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1132
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1134
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    .line 1135
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1136
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1144
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1147
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1153
    :cond_5
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showIpConfigFields()V

    goto/16 :goto_0
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
    .line 1161
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
    .line 1088
    return-void
.end method
