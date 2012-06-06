.class public Lcom/android/OriginalSettings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 70
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 213
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 248
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 81
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 83
    if-eqz p3, :cond_0

    .line 84
    invoke-static {p3}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wifi/WifiApDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/OriginalSettings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x2

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 3

    .prologue
    const v1, 0x7f0801fe

    .line 347
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    const-string v0, "IDE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ONE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ORO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AMN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ORA"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0801ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 286
    const/4 v6, 0x0

    .line 287
    .local v6, ssidSpaceCharCount:I
    const/4 v3, 0x0

    .line 288
    .local v3, passwordSpaceCharCount:I
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 289
    .local v5, ssidLength:I
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 290
    .local v2, passwordLength:I
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, ssid:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, password:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 294
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_0

    .line 295
    add-int/lit8 v6, v6, 0x1

    .line 293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_2

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 299
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_3
    if-eqz v5, :cond_7

    if-eq v5, v6, :cond_7

    iget v7, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v7, v8, :cond_4

    iget v7, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v7, v10, :cond_5

    :cond_4
    if-eq v2, v3, :cond_7

    :cond_5
    iget v7, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v7, v10, :cond_8

    :cond_6
    const/16 v7, 0x8

    if-ge v2, v7, :cond_8

    .line 308
    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    :goto_2
    return-void

    .line 310
    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    .line 333
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 329
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 107
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 109
    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 111
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 116
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 117
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 124
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 125
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 126
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSecuritySpinner()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 322
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 323
    return-void

    .line 316
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0801ff

    const/4 v4, 0x1

    .line 138
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0801fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 141
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, context:Landroid/content/Context;
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 147
    const v1, 0x7f0b02e0

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setTitle(I)V

    .line 148
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0801e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0801fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 151
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f0801f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 153
    const/4 v1, -0x1

    const v2, 0x7f0b0293

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    const/4 v1, -0x2

    const v2, 0x7f0b0294

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 160
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiApDialog;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 187
    const-string v1, "IDE"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ONE"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ORO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AMN"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FTM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ORA"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 199
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 201
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 202
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    .line 203
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 337
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 338
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 339
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiApDialog;->validate()V

    .line 340
    return-void
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
    .line 344
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
    .line 326
    return-void
.end method
