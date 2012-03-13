.class Lcom/sec/android/app/callsetting/allcalls/BlackList$3;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 325
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$702(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I

    .line 326
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.sec.android.app.callsetting"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, pkg_name:Ljava/lang/String;
    const-string v3, ".allcalls.BlackListNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, className:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkg name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Cls name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$800(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 333
    return-void
.end method
