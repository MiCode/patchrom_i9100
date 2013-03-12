.class public final enum Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;
.super Ljava/lang/Enum;
.source "CircleMissedEventWidgetDA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

.field public static final enum MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

.field public static final enum MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

.field public static final enum MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

.field public static final enum MissedVvm:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    const-string v1, "MissedCall"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    const-string v1, "MissedMsg"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    const-string v1, "MissedEMail"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    const-string v1, "MissedVvm"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedVvm:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->MissedVvm:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->$VALUES:[Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 60
    const-class v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->$VALUES:[Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$NotiMode;

    return-object v0
.end method
