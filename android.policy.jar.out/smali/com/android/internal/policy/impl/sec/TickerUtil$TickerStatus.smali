.class public final enum Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;
.super Ljava/lang/Enum;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TickerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum FacebookNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum FacebookNoInstalled:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum FacebookNoLogin:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum FacebookNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum NewsNoCountry:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum NewsNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum NewsNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum StockNoItem:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

.field public static final enum StockNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "NewsNormal"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "NewsNoData"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "NewsNoCountry"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "StockNormal"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "StockNoItem"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "NetworkUnavailable"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "FacebookNormal"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "FacebookNoData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "FacebookNoLogin"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    const-string v1, "FacebookNoInstalled"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->$VALUES:[Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->$VALUES:[Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;

    return-object v0
.end method
