.class Lcom/android/OriginalSettings/vpn2/VpnDialog;
.super Landroid/app/AlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/vpn2/VpnProfile;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"
    .parameter "editing"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 69
    iput-object p2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    iput-object p3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    .line 71
    iput-boolean p4, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mEditing:Z

    .line 72
    return-void
.end method

.method private changeType(I)V
    .locals 7
    .parameter "type"

    .prologue
    const v6, 0x7f0801ed

    const v5, 0x7f0801ea

    const v4, 0x7f0801e8

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 234
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :pswitch_5
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 299
    .local v3, context:Landroid/content/Context;
    if-nez p3, :cond_2

    const-string v4, ""

    .line 300
    .local v4, first:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, certificates:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 303
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #certificates:[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 311
    .restart local v2       #certificates:[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 313
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 314
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 316
    const/4 v5, 0x1

    .local v5, i:I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 317
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 318
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 322
    :cond_1
    return-void

    .line 299
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #certificates:[Ljava/lang/String;
    .end local v4           #first:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 305
    .restart local v2       #certificates:[Ljava/lang/String;
    .restart local v4       #first:Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 306
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 307
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    move-object v2, v1

    goto :goto_1

    .line 316
    .end local v1           #array:[Ljava/lang/String;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private validate(Z)Z
    .locals 3
    .parameter "editing"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    if-nez p1, :cond_2

    .line 247
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 252
    goto :goto_0

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 267
    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 265
    :pswitch_2
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .parameter "addresses"
    .parameter "cidr"

    .prologue
    .line 272
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 273
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 272
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    :cond_1
    const/16 v8, 0x20

    .line 278
    .local v8, prefixLength:I
    if-eqz p2, :cond_2

    .line 279
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 281
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 283
    .end local v7           #parts:[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 284
    .local v2, bytes:[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 286
    .local v5, integer:I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 288
    :cond_3
    const/4 v9, 0x0

    .line 294
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bytes:[B
    .end local v4           #i$:I
    .end local v5           #integer:I
    .end local v6           #len$:I
    .end local v8           #prefixLength:I
    :goto_1
    return v9

    .line 291
    :catch_0
    move-exception v3

    .line 292
    .local v3, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 294
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 183
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 188
    return-void
.end method

.method getProfile()Lcom/android/OriginalSettings/vpn2/VpnProfile;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v1, v1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 332
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    .line 333
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 338
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    .line 341
    iget v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->saveLogin:Z

    .line 370
    return-object v0

    .line 343
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->mppe:Z

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 350
    :pswitch_2
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 358
    :pswitch_4
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 363
    :cond_1
    :pswitch_5
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isEditing()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "showOptions"

    .prologue
    .line 196
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f04009d

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    .line 77
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setInverseBackgroundForced(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f080090

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    .line 84
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801e5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    .line 85
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801e6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    .line 86
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801f7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    .line 87
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801f8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    .line 88
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801f3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 89
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801f4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    .line 90
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801f5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    .line 91
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801e7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    .line 92
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801e9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 93
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801eb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 94
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801ec

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 95
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801ee

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 96
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801f0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 97
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0801f9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    .line 100
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 102
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-boolean v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->mppe:Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string v6, "USRCERT_"

    iget-object v7, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v4, v7}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v6, "CACERT_"

    const v7, 0x7f0b068a

    iget-object v8, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-boolean v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->saveLogin:Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 130
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v2

    .line 131
    .local v2, valid:Z
    iget-boolean v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mEditing:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mEditing:Z

    .line 133
    iget-boolean v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v3, :cond_3

    .line 134
    const v3, 0x7f0b068e

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setTitle(I)V

    .line 137
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v5, 0x7f0801e4

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget v3, v3, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->changeType(I)V

    .line 143
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v5, 0x7f0801f1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, showOptions:Landroid/view/View;
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v3, v3, Lcom/android/OriginalSettings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v3, v3, Lcom/android/OriginalSettings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v3, v3, Lcom/android/OriginalSettings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :goto_1
    const v3, 0x7f0b068c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v5}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 166
    .end local v1           #showOptions:Landroid/view/View;
    :goto_2
    const/4 v3, -0x2

    const v5, 0x7f0b068b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    invoke-super {p0, v10}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v5, :cond_4

    .end local v2           #valid:Z
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 179
    return-void

    .restart local v2       #valid:Z
    :cond_1
    move v3, v4

    .line 131
    goto :goto_0

    .line 148
    .restart local v1       #showOptions:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 155
    .end local v1           #showOptions:Landroid/view/View;
    :cond_3
    const v3, 0x7f0b068f

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mProfile:Lcom/android/OriginalSettings/vpn2/VpnProfile;

    iget-object v6, v6, Lcom/android/OriginalSettings/vpn2/VpnProfile;->name:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v5, 0x7f0801f6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const v3, 0x7f0b068d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v5}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 173
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v2

    goto :goto_3
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
    .line 202
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 203
    invoke-direct {p0, p3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->changeType(I)V

    .line 205
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/OriginalSettings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
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
    .line 210
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
    .line 192
    return-void
.end method
