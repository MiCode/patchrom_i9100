.class public final enum Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;
.super Ljava/lang/Enum;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StockDemon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

.field public static final enum Edaily:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

.field public static final enum Sina:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

.field public static final enum Yahoo:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    const-string v1, "Yahoo"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Yahoo:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    const-string v1, "Edaily"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Edaily:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    const-string v1, "Sina"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Sina:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Yahoo:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Edaily:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Sina:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->$VALUES:[Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->$VALUES:[Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;

    return-object v0
.end method
