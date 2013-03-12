.class public Lcom/android/server/enterprise/firewall/FirewallRuleAction;
.super Ljava/lang/Object;
.source "FirewallRuleAction.java"


# static fields
.field public static final ACCEPT:I = 0x1

.field private static final ACTION_NOT_SET:I = -0x1

.field public static final DROP:I = 0x2

.field public static final LOG:I = 0x4

.field public static final PROXY:I = 0x3

.field public static final REDIRECT:I = 0x0

.field public static final REDIRECT_EXCEPTION:I = 0x7

.field public static final REJECT:I = 0x6

.field public static final RETURN:I = 0x5


# instance fields
.field private mAction:I

.field private mIpAddress:Ljava/lang/String;

.field private mPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 179
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 185
    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    .line 194
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddress"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mIpAddress:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPort(Ljava/lang/String;)Z
    .locals 2
    .parameter "port"

    .prologue
    .line 140
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mPort:Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
