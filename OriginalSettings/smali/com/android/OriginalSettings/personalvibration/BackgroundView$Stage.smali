.class public final enum Lcom/android/settings/personalvibration/BackgroundView$Stage;
.super Ljava/lang/Enum;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalvibration/BackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/personalvibration/BackgroundView$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field public static final enum Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field public static final enum Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field public static final enum Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field public static final enum Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;

    const-string v1, "Standby"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/personalvibration/BackgroundView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 60
    new-instance v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;

    const-string v1, "Recording"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/personalvibration/BackgroundView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 61
    new-instance v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/personalvibration/BackgroundView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 62
    new-instance v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;

    const-string v1, "Play"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/personalvibration/BackgroundView$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->$VALUES:[Lcom/android/settings/personalvibration/BackgroundView$Stage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/personalvibration/BackgroundView$Stage;
    .locals 1
    .parameter

    .prologue
    .line 58
    const-class v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/personalvibration/BackgroundView$Stage;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->$VALUES:[Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/personalvibration/BackgroundView$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/personalvibration/BackgroundView$Stage;

    return-object v0
.end method
