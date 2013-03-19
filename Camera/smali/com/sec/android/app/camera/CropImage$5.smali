.class Lcom/sec/android/app/camera/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$5;->this$0:Lcom/sec/android/app/camera/CropImage;

    iput-object p2, p0, Lcom/sec/android/app/camera/CropImage$5;->val$b:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$5;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$5;->val$b:Landroid/graphics/Bitmap;

    #calls: Lcom/sec/android/app/camera/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CropImage;->access$500(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    .line 451
    return-void
.end method
