.class Lcom/android/sec_settings/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/HomeSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/HomeSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/sec_settings/HomeSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/sec_settings/HomeSettings$1;->this$0:Lcom/android/sec_settings/HomeSettings;

    iput p2, p0, Lcom/android/sec_settings/HomeSettings$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/sec_settings/HomeSettings$1;->this$0:Lcom/android/sec_settings/HomeSettings;

    iget v1, p0, Lcom/android/sec_settings/HomeSettings$1;->val$position:I

    #calls: Lcom/android/sec_settings/HomeSettings;->changeHome(I)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/HomeSettings;->access$000(Lcom/android/sec_settings/HomeSettings;I)V

    .line 213
    iget-object v0, p0, Lcom/android/sec_settings/HomeSettings$1;->this$0:Lcom/android/sec_settings/HomeSettings;

    #calls: Lcom/android/sec_settings/HomeSettings;->startHome()V
    invoke-static {v0}, Lcom/android/sec_settings/HomeSettings;->access$100(Lcom/android/sec_settings/HomeSettings;)V

    .line 214
    return-void
.end method
