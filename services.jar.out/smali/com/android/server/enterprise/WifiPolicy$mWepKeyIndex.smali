.class final enum Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;
.super Ljava/lang/Enum;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "mWepKeyIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    const-string v1, "wepkey1"

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    const-string v1, "wepkey2"

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    const-string v1, "wepkey3"

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    const-string v1, "wepkey4"

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;
    .locals 1
    .parameter "name"

    .prologue
    .line 125
    const-class v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    return-object v0
.end method
