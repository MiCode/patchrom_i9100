.class final enum Lcom/android/server/BackupManagerService$BackupState;
.super Ljava/lang/Enum;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BackupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/BackupManagerService$BackupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/BackupManagerService$BackupState;

.field public static final enum FINAL:Lcom/android/server/BackupManagerService$BackupState;

.field public static final enum INITIAL:Lcom/android/server/BackupManagerService$BackupState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1880
    new-instance v0, Lcom/android/server/BackupManagerService$BackupState;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/BackupManagerService$BackupState;

    .line 1881
    new-instance v0, Lcom/android/server/BackupManagerService$BackupState;

    const-string v1, "RUNNING_QUEUE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/BackupManagerService$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    .line 1882
    new-instance v0, Lcom/android/server/BackupManagerService$BackupState;

    const-string v1, "FINAL"

    invoke-direct {v0, v1, v4}, Lcom/android/server/BackupManagerService$BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    .line 1879
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/BackupManagerService$BackupState;

    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/BackupManagerService$BackupState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/BackupManagerService$BackupState;->$VALUES:[Lcom/android/server/BackupManagerService$BackupState;

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
    .line 1879
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/BackupManagerService$BackupState;
    .locals 1
    .parameter "name"

    .prologue
    .line 1879
    const-class v0, Lcom/android/server/BackupManagerService$BackupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/BackupManagerService$BackupState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/BackupManagerService$BackupState;
    .locals 1

    .prologue
    .line 1879
    sget-object v0, Lcom/android/server/BackupManagerService$BackupState;->$VALUES:[Lcom/android/server/BackupManagerService$BackupState;

    invoke-virtual {v0}, [Lcom/android/server/BackupManagerService$BackupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/BackupManagerService$BackupState;

    return-object v0
.end method
