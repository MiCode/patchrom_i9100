.class final enum Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;
.super Ljava/lang/Enum;
.source "PowerUsageDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DrainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum APP:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum BLUETOOTH:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum CELL:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum IDLE:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum PHONE:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum SCREEN:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

.field public static final enum WIFI:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    .line 60
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    .line 61
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v5}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    .line 62
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v6}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    .line 63
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v7}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    .line 64
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "SCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    .line 65
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const-string v1, "APP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v1, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->$VALUES:[Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;
    .locals 1
    .parameter

    .prologue
    .line 58
    const-class v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    return-object v0
.end method

.method public static values()[Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->$VALUES:[Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v0}, [Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    return-object v0
.end method
