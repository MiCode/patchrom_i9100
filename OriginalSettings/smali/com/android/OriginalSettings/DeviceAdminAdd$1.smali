.class Lcom/android/OriginalSettings/DeviceAdminAdd$1;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DeviceAdminAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$1;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/DeviceAdminAdd$1;->this$0:Lcom/android/OriginalSettings/DeviceAdminAdd;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 176
    return-void
.end method
