.class Lcom/android/internal/policy/impl/WallpaperWidget$1;
.super Landroid/os/Handler;
.source "WallpaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/WallpaperWidget;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/WallpaperWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WallpaperWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/WallpaperWidget;->handleWallpaperUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WallpaperWidget;->access$000(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/WallpaperWidget;->handleLiveWallpaperUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WallpaperWidget;->access$100(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x12c0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
