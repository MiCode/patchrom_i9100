.class Lcom/android/sec_settings/DeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DeviceAdminAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/sec_settings/DeviceAdminAdd$2;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/sec_settings/DeviceAdminAdd$2;->this$0:Lcom/android/sec_settings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/sec_settings/DeviceAdminAdd;->finish()V

    .line 222
    return-void
.end method
