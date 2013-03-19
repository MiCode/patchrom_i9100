.class final enum Lcom/sec/android/app/camera/BitmapManager$State;
.super Ljava/lang/Enum;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/BitmapManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/BitmapManager$State;

.field public static final enum ALLOW:Lcom/sec/android/app/camera/BitmapManager$State;

.field public static final enum CANCEL:Lcom/sec/android/app/camera/BitmapManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/sec/android/app/camera/BitmapManager$State;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/BitmapManager$State;->CANCEL:Lcom/sec/android/app/camera/BitmapManager$State;

    new-instance v0, Lcom/sec/android/app/camera/BitmapManager$State;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/BitmapManager$State;->ALLOW:Lcom/sec/android/app/camera/BitmapManager$State;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/camera/BitmapManager$State;

    sget-object v1, Lcom/sec/android/app/camera/BitmapManager$State;->CANCEL:Lcom/sec/android/app/camera/BitmapManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/BitmapManager$State;->ALLOW:Lcom/sec/android/app/camera/BitmapManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/BitmapManager$State;->$VALUES:[Lcom/sec/android/app/camera/BitmapManager$State;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/BitmapManager$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/sec/android/app/camera/BitmapManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/BitmapManager$State;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/BitmapManager$State;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/app/camera/BitmapManager$State;->$VALUES:[Lcom/sec/android/app/camera/BitmapManager$State;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/BitmapManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/BitmapManager$State;

    return-object v0
.end method
