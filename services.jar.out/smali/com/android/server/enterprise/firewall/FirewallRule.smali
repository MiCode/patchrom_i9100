.class public Lcom/android/server/enterprise/firewall/FirewallRule;
.super Ljava/lang/Object;
.source "FirewallRule.java"


# static fields
.field public static final APPEND:I = 0x1

.field public static final BOTH_DIRECTION:Ljava/lang/String; = "both"

.field public static final BOTH_INTERFACES:Ljava/lang/String; = "both"

.field public static final BOTH_PORT_LOCATION:Ljava/lang/String; = "both"

.field public static final BOTH_PROTOCOL:Ljava/lang/String; = "both"

.field public static final DATA_INTERFACE:Ljava/lang/String; = "data"

.field public static final DELETE:I = 0x2

.field public static final FILTER_TABLE:Ljava/lang/String; = "filter"

.field public static final INSERT:I = 0x3

.field public static final IN_DIRECTION:Ljava/lang/String; = "in"

.field public static final LOCAL_PORT_LOCATION:Ljava/lang/String; = "local"

.field public static final MANGLE_TABLE:Ljava/lang/String; = "mangle"

.field public static final NAT_TABLE:Ljava/lang/String; = "nat"

.field public static final NO_TYPE_SET:I = -0x1

.field public static final NO_UID_SET:I = -0x1

.field public static final OUT_DIRECTION:Ljava/lang/String; = "out"

.field public static final RAW_TABLE:Ljava/lang/String; = "raw"

.field public static final REMOTE_PORT_LOCATION:Ljava/lang/String; = "remote"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final TCP_PROTOCOL:Ljava/lang/String; = "tcp"

.field public static final UDP_PROTOCOL:Ljava/lang/String; = "udp"

.field public static final WIFI_INTERFACE:Ljava/lang/String; = "wifi"


# instance fields
.field private mChain:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mIprange:Ljava/lang/String;

.field private mNetworkInterface:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPortLocation:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

.field private mRuleType:I

.field private mTable:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    .line 158
    iput v1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    .line 170
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 173
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setHostnameOrIp(Ljava/lang/String;)Z

    .line 176
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPort(Ljava/lang/String;)Z

    .line 179
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setProtocol(Ljava/lang/String;)Z

    .line 182
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPortLocation(Ljava/lang/String;)Z

    .line 185
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setNetworkInterface(Ljava/lang/String;)Z

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleType(I)Z

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setUid(I)Z

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V
    .locals 1
    .parameter "table"
    .parameter "chain"
    .parameter "direction"
    .parameter "ipRange"
    .parameter "port"
    .parameter "protocol"
    .parameter "portLocation"
    .parameter "networkInterface"
    .parameter "type"
    .parameter "uid"
    .parameter "ruleAction"

    .prologue
    const/4 v0, -0x1

    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    .line 158
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setTable(Ljava/lang/String;)Z

    .line 215
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallRule;->setChain(Ljava/lang/String;)Z

    .line 218
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 221
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/firewall/FirewallRule;->setHostnameOrIp(Ljava/lang/String;)Z

    .line 224
    invoke-virtual {p0, p5}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPort(Ljava/lang/String;)Z

    .line 227
    invoke-virtual {p0, p6}, Lcom/android/server/enterprise/firewall/FirewallRule;->setProtocol(Ljava/lang/String;)Z

    .line 230
    invoke-virtual {p0, p7}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPortLocation(Ljava/lang/String;)Z

    .line 233
    invoke-virtual {p0, p8}, Lcom/android/server/enterprise/firewall/FirewallRule;->setNetworkInterface(Ljava/lang/String;)Z

    .line 236
    invoke-virtual {p0, p9}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleType(I)Z

    .line 239
    invoke-virtual {p0, p10}, Lcom/android/server/enterprise/firewall/FirewallRule;->setUid(I)Z

    .line 242
    invoke-virtual {p0, p11}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    .line 245
    return-void
.end method


# virtual methods
.method public getChain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mChain:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getHostnameOrIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mIprange:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPortLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPortLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    return-object v0
.end method

.method public getRuleType()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mTable:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    return v0
.end method

.method public setChain(Ljava/lang/String;)Z
    .locals 1
    .parameter "chain"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mChain:Ljava/lang/String;

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public setDirection(Ljava/lang/String;)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 323
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mDirection:Ljava/lang/String;

    .line 332
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHostnameOrIp(Ljava/lang/String;)Z
    .locals 1
    .parameter "hostnameOrIp"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mIprange:Ljava/lang/String;

    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public setNetworkInterface(Ljava/lang/String;)Z
    .locals 1
    .parameter "networkInterface"

    .prologue
    .line 479
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mNetworkInterface:Ljava/lang/String;

    .line 488
    const/4 v0, 0x1

    .line 494
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPort(Ljava/lang/String;)Z
    .locals 1
    .parameter "port"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPort:Ljava/lang/String;

    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public setPortLocation(Ljava/lang/String;)Z
    .locals 1
    .parameter "portLocation"

    .prologue
    .line 656
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "remote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "local"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPortLocation:Ljava/lang/String;

    .line 665
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProtocol(Ljava/lang/String;)Z
    .locals 2
    .parameter "protocol"

    .prologue
    .line 614
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tcp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "udp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mProtocol:Ljava/lang/String;

    .line 620
    const-string v0, "FirewallPolicy"

    const-string v1, "setProtocol before true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v0, 0x1

    .line 632
    :goto_0
    return v0

    .line 629
    :cond_1
    const-string v0, "FirewallPolicy"

    const-string v1, "setProtocol before false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z
    .locals 1
    .parameter "ruleAction"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public setRuleType(I)Z
    .locals 2
    .parameter "ruleType"

    .prologue
    const/4 v0, 0x1

    .line 545
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 548
    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    .line 557
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTable(Ljava/lang/String;)Z
    .locals 1
    .parameter "table"

    .prologue
    .line 284
    const-string v0, "filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mTable:Ljava/lang/String;

    .line 293
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUid(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 587
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    .line 590
    const/4 v0, 0x1

    return v0
.end method
