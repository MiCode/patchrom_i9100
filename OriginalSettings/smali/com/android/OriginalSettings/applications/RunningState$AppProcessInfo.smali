.class Lcom/android/OriginalSettings/applications/RunningState$AppProcessInfo;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppProcessInfo"
.end annotation


# instance fields
.field hasForegroundServices:Z

.field hasServices:Z

.field final info:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .parameter "_info"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 110
    return-void
.end method
