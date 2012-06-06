.class public Lcom/android/OriginalSettings/wifi/IwlanNetwork;
.super Landroid/preference/Preference;
.source "IwlanNetwork.java"


# instance fields
.field private defaultPdgDomainName:Ljava/lang/String;

.field private isConnected:Z

.field private pdgAddress:Ljava/lang/String;

.field private pdgDomainName:Ljava/lang/String;


# virtual methods
.method public getDefaultPdgDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->defaultPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdgDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->pdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdgIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->isConnected:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getDefaultPdgDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b08cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b08d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->pdgAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/IwlanNetwork;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
