.class final enum Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;
.super Ljava/lang/Enum;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "mEnterpriseFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

.field public static final enum anonymous_identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

.field public static final enum ca_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

.field public static final enum client_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

.field public static final enum eap:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

.field public static final enum identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

.field public static final enum password:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

.field public static final enum phase2:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

.field public static final enum private_key:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    const-string v1, "eap"

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->eap:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    const-string v1, "phase2"

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->phase2:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    const-string v1, "identity"

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    const-string v1, "anonymous_identity"

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->anonymous_identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    const-string v1, "password"

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->password:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    const-string v1, "client_cert"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->client_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    const-string v1, "private_key"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->private_key:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    const-string v1, "ca_cert"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ca_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->eap:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->phase2:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->anonymous_identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->password:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->client_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->private_key:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ca_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->$VALUES:[Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->$VALUES:[Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    return-object v0
.end method
