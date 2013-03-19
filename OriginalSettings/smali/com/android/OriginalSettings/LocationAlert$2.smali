.class Lcom/android/settings/LocationAlert$2;
.super Ljava/lang/Object;
.source "LocationAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocationAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationAlert;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/LocationAlert$2;->this$0:Lcom/android/settings/LocationAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/LocationAlert$2;->this$0:Lcom/android/settings/LocationAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/LocationAlert;->setResult(I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/LocationAlert$2;->this$0:Lcom/android/settings/LocationAlert;

    invoke-virtual {v0}, Lcom/android/settings/LocationAlert;->finish()V

    .line 86
    return-void
.end method
