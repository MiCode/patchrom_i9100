.class public final enum Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;
.super Ljava/lang/Enum;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TickerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

.field public static final enum facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

.field public static final enum news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

.field public static final enum stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    const-string v1, "news"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    const-string v1, "stock"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    const-string v1, "facebook"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    .line 291
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->$VALUES:[Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

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
    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;
    .locals 1
    .parameter "name"

    .prologue
    .line 291
    const-class v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->$VALUES:[Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    return-object v0
.end method
