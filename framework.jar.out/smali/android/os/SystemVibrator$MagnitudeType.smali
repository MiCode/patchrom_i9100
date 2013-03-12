.class public final enum Landroid/os/SystemVibrator$MagnitudeType;
.super Ljava/lang/Enum;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MagnitudeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/SystemVibrator$MagnitudeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/SystemVibrator$MagnitudeType;

.field public static final enum CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

.field public static final enum MaxMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

.field public static final enum NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

.field public static final enum TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Landroid/os/SystemVibrator$MagnitudeType;

    const-string v1, "TouchMagnitude"

    invoke-direct {v0, v1, v2}, Landroid/os/SystemVibrator$MagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    .line 43
    new-instance v0, Landroid/os/SystemVibrator$MagnitudeType;

    const-string v1, "NotificationMagnitude"

    invoke-direct {v0, v1, v3}, Landroid/os/SystemVibrator$MagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    .line 44
    new-instance v0, Landroid/os/SystemVibrator$MagnitudeType;

    const-string v1, "CallMagnitude"

    invoke-direct {v0, v1, v4}, Landroid/os/SystemVibrator$MagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    .line 45
    new-instance v0, Landroid/os/SystemVibrator$MagnitudeType;

    const-string v1, "MaxMagnitude"

    invoke-direct {v0, v1, v5}, Landroid/os/SystemVibrator$MagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/SystemVibrator$MagnitudeType;->MaxMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/SystemVibrator$MagnitudeType;

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->MaxMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/os/SystemVibrator$MagnitudeType;->$VALUES:[Landroid/os/SystemVibrator$MagnitudeType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/SystemVibrator$MagnitudeType;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Landroid/os/SystemVibrator$MagnitudeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator$MagnitudeType;

    return-object v0
.end method

.method public static values()[Landroid/os/SystemVibrator$MagnitudeType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/os/SystemVibrator$MagnitudeType;->$VALUES:[Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0}, [Landroid/os/SystemVibrator$MagnitudeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/SystemVibrator$MagnitudeType;

    return-object v0
.end method
