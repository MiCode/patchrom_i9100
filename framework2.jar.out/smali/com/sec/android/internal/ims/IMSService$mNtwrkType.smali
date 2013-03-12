.class final enum Lcom/sec/android/internal/ims/IMSService$mNtwrkType;
.super Ljava/lang/Enum;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "mNtwrkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/internal/ims/IMSService$mNtwrkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

.field public static final enum LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

.field public static final enum NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

.field public static final enum UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

.field public static final enum WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 211
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    const-string v1, "LTE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 212
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    const-string v1, "UMTS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 213
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 209
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->$VALUES:[Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

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
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/internal/ims/IMSService$mNtwrkType;
    .locals 1
    .parameter "name"

    .prologue
    .line 209
    const-class v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/internal/ims/IMSService$mNtwrkType;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->$VALUES:[Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v0}, [Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    return-object v0
.end method
