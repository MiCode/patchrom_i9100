.class Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DeleteFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    .line 218
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 219
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 237
    const/4 v1, 0x1

    .line 238
    .local v1, bSuccess:Z
    const-string v0, "-1001"

    .line 239
    .local v0, bSegment:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const/4 v3, 0x0

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/DeleteFdnContactScreen;->access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    .line 240
    if-gez p3, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 242
    const/16 v2, -0x3eb

    if-ne p3, v2, :cond_0

    .line 243
    const-string v0, "-1003"

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->handleResult(ZLjava/lang/String;)V
    invoke-static {v2, v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$200(Lcom/android/phone/DeleteFdnContactScreen;ZLjava/lang/String;)V

    .line 247
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 230
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    .line 225
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    #calls: Lcom/android/phone/DeleteFdnContactScreen;->deleteContact()V
    invoke-static {v0}, Lcom/android/phone/DeleteFdnContactScreen;->access$100(Lcom/android/phone/DeleteFdnContactScreen;)V

    .line 226
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 233
    return-void
.end method
