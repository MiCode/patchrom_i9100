.class Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget$1;
.super Landroid/os/FileObserver;
.source "EnhancedWallpaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 27
    const-string v0, "EnhancedWallpaperWidget"

    const-string v1, "Wallpaper image changed, so set lockscreenBackground and rippleLockscreenBackground null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->access$002(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->access$102(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    return-void
.end method
