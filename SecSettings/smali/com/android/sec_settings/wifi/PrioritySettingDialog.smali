.class public Lcom/android/sec_settings/wifi/PrioritySettingDialog;
.super Landroid/app/AlertDialog;
.source "PrioritySettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private final mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mPriorityButton:I

.field private mPriorityView:Landroid/view/ViewGroup;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSecurity:I

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field orderedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/sec_settings/wifi/AccessPoint;)V
    .locals 1
    .parameter "context"
    .parameter "accessPoint"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object p1, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 112
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mSecurity:I

    .line 113
    return-void

    .line 112
    :cond_0
    iget v0, p2, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/PrioritySettingDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 8
    .parameter "wifiManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 317
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v4, orderedConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 320
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 322
    const/4 v6, 0x0

    invoke-interface {v4, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 325
    :cond_0
    const/4 v2, 0x0

    .line 326
    .local v2, i:I
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 327
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 328
    .local v5, t:Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v6, v7, :cond_1

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 335
    .end local v5           #t:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-interface {v4, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 339
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #orderedConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    const/4 v4, 0x0

    .line 341
    .restart local v4       #orderedConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    return-object v4
.end method

.method static resortOrderedConfigs(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, lOrderedConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    .local v0, cur_priority:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 306
    .local v2, oconfig:Landroid/net/wifi/WifiConfiguration;
    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 307
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 309
    .end local v2           #oconfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void
.end method

.method private validatePriorityButtons()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 386
    iget-object v2, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 387
    .local v0, id:I
    iget-object v2, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 389
    .local v1, total_num:I
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_0

    .line 409
    :goto_0
    return-void

    .line 392
    :cond_0
    if-ne v0, v3, :cond_1

    .line 393
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 394
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 395
    :cond_1
    if-ne v1, v6, :cond_2

    .line 396
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 398
    :cond_2
    if-nez v0, :cond_3

    .line 399
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 400
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 401
    :cond_3
    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_4

    .line 402
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 403
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 406
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 234
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 228
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 346
    const-string v0, "WifiPriorityDialog"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    .line 348
    return-void
.end method

.method protected cancelOrDismiss(Z)V
    .locals 3
    .parameter "isCancel"

    .prologue
    .line 360
    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOrDismiss isCancel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPriorityButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v0, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    if-nez v0, :cond_1

    .line 362
    :cond_0
    if-eqz p1, :cond_2

    .line 363
    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 367
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 368
    return-void

    .line 365
    :cond_2
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "WifiPriorityDialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->cancelOrDismiss(Z)V

    .line 354
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "rg"
    .parameter "checkedId"

    .prologue
    .line 376
    const-string v0, "WifiPriorityDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged checkedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 378
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v8, -0x1

    .line 258
    const-string v6, "WifiPriorityDialog"

    const-string v7, "onClick"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput p2, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 262
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 263
    .local v2, id:I
    if-ne v2, v8, :cond_1

    .line 298
    :cond_0
    return-void

    .line 267
    :cond_1
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 268
    .local v5, total_num:I
    if-ne p2, v8, :cond_2

    const/4 v6, 0x1

    if-lt v2, v6, :cond_2

    .line 269
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 270
    .local v4, sel_config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 272
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 273
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    .line 274
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 277
    .end local v4           #sel_config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v6, -0x3

    if-ne p2, v6, :cond_3

    add-int/lit8 v6, v5, -0x2

    if-gt v2, v6, :cond_3

    .line 278
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 279
    .restart local v4       #sel_config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 281
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 282
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-static {v6}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->resortOrderedConfigs(Ljava/util/List;)V

    .line 283
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 285
    .end local v4           #sel_config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v6, -0x2

    if-ne p2, v6, :cond_0

    .line 288
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 289
    .local v3, oconfig:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 291
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 292
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 293
    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 295
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v8, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v7, v0, v8}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 222
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04011c

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    .line 119
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->setView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 122
    .local v2, resources:Landroid/content/res/Resources;
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 123
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 125
    const-string v3, "WifiPriorityDialog"

    const-string v4, "PrioritySettingDialog onCreate null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04011d

    iget-object v5, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, priorityView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0381

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    .line 128
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    const v3, 0x7f090c07

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->setTitle(I)V

    .line 131
    new-instance v3, Lcom/android/sec_settings/wifi/PrioritySettingDialog$1;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog$1;-><init>(Lcom/android/sec_settings/wifi/PrioritySettingDialog;)V

    iput-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 141
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0384

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 142
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    if-nez v3, :cond_0

    .line 143
    const-string v3, "WifiPriorityDialog"

    const-string v4, "mRadioGroup is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 150
    const/4 v3, -0x1

    const v4, 0x7f090c04

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    const/4 v3, -0x3

    const v4, 0x7f090c05

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    const/4 v3, -0x2

    const v4, 0x7f090c06

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->getOrderedConfigs(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    .line 159
    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->updateRadioGroup(I)V

    .line 160
    iput v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mPriorityButton:I

    .line 161
    iget-object v3, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 162
    invoke-virtual {p0, p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 163
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 164
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 231
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 219
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 416
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 225
    return-void
.end method

.method protected updateRadioGroup(I)V
    .locals 10
    .parameter "checkId"

    .prologue
    const/4 v9, -0x2

    .line 192
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 193
    const-string v6, "WifiPriorityDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRadioGroup add ordered configurations. number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, i:I
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->orderedConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 197
    .local v4, oconfig:Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 198
    .local v5, rb1:Landroid/widget/RadioButton;
    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/sec_settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 201
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 202
    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 205
    .local v3, lp_rb1:Landroid/widget/RadioGroup$LayoutParams;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 206
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v6, v5, v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 207
    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup current ssid:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 208
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 209
    .end local v3           #lp_rb1:Landroid/widget/RadioGroup$LayoutParams;
    .end local v4           #oconfig:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #rb1:Landroid/widget/RadioButton;
    :cond_0
    iget-object v6, p0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 215
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->validatePriorityButtons()V

    .line 216
    .end local v0           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 212
    :cond_1
    const-string v6, "WifiPriorityDialog"

    const-string v7, "updateRadioGroup orderedConfigs is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
