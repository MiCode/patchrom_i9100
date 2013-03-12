.class Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
.super Ljava/lang/Object;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExtendedApi3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKey3LM"
.end annotation


# instance fields
.field private final m3LMPublicKey:[B

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    .line 102
    iget-object v3, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 103
    .local v2, resources:Landroid/content/res/Resources;
    const-string v0, ""

    .line 104
    .local v0, cert:Ljava/lang/String;
    const-string v3, "1"

    const-string v4, "ro.3lm.production"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const v3, 0x1040022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v1

    .line 110
    .local v1, key:Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->m3LMPublicKey:[B

    .line 111
    return-void

    .line 107
    .end local v1           #key:Ljava/security/PublicKey;
    :cond_0
    const v3, 0x1040023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private extractPublicKey([B)Ljava/security/PublicKey;
    .locals 1
    .parameter "blob"

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public comparePublicKey([B)Z
    .locals 1
    .parameter "blob"

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method
