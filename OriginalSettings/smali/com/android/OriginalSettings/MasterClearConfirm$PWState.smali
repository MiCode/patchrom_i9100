.class final enum Lcom/android/settings/MasterClearConfirm$PWState;
.super Ljava/lang/Enum;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PWState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/MasterClearConfirm$PWState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/MasterClearConfirm$PWState;

.field public static final enum CONFIRM:Lcom/android/settings/MasterClearConfirm$PWState;

.field public static final enum CURRENT:Lcom/android/settings/MasterClearConfirm$PWState;

.field public static final enum NEW:Lcom/android/settings/MasterClearConfirm$PWState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/android/settings/MasterClearConfirm$PWState;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MasterClearConfirm$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/settings/MasterClearConfirm$PWState;

    new-instance v0, Lcom/android/settings/MasterClearConfirm$PWState;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/MasterClearConfirm$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->NEW:Lcom/android/settings/MasterClearConfirm$PWState;

    new-instance v0, Lcom/android/settings/MasterClearConfirm$PWState;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/MasterClearConfirm$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->CONFIRM:Lcom/android/settings/MasterClearConfirm$PWState;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/MasterClearConfirm$PWState;

    sget-object v1, Lcom/android/settings/MasterClearConfirm$PWState;->CURRENT:Lcom/android/settings/MasterClearConfirm$PWState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/MasterClearConfirm$PWState;->NEW:Lcom/android/settings/MasterClearConfirm$PWState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/MasterClearConfirm$PWState;->CONFIRM:Lcom/android/settings/MasterClearConfirm$PWState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->$VALUES:[Lcom/android/settings/MasterClearConfirm$PWState;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/MasterClearConfirm$PWState;
    .locals 1
    .parameter

    .prologue
    .line 83
    const-class v0, Lcom/android/settings/MasterClearConfirm$PWState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MasterClearConfirm$PWState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/MasterClearConfirm$PWState;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/settings/MasterClearConfirm$PWState;->$VALUES:[Lcom/android/settings/MasterClearConfirm$PWState;

    invoke-virtual {v0}, [Lcom/android/settings/MasterClearConfirm$PWState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/MasterClearConfirm$PWState;

    return-object v0
.end method
