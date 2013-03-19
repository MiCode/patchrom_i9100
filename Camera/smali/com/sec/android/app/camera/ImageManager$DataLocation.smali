.class public final enum Lcom/sec/android/app/camera/ImageManager$DataLocation;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/ImageManager$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/ImageManager$DataLocation;

.field public static final enum ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

.field public static final enum EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

.field public static final enum INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

.field public static final enum NONE:Lcom/sec/android/app/camera/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->NONE:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    new-instance v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    new-instance v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    new-instance v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/camera/ImageManager$DataLocation;

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->NONE:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->$VALUES:[Lcom/sec/android/app/camera/ImageManager$DataLocation;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/ImageManager$DataLocation;
    .locals 1
    .parameter "name"

    .prologue
    .line 129
    const-class v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->$VALUES:[Lcom/sec/android/app/camera/ImageManager$DataLocation;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/ImageManager$DataLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/ImageManager$DataLocation;

    return-object v0
.end method
