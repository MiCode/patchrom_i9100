.class Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;
.super Ljava/lang/Thread;
.source "BlackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Lcom/sec/android/app/callsetting/allcalls/BlackList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 143
    .local v10, msg:Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v10, Landroid/os/Message;->what:I

    .line 146
    const/4 v7, 0x0

    .line 147
    .local v7, contact_cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 148
    .local v11, shouldDefaultName:Z
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v2

    if-nez v2, :cond_3

    .line 150
    .local v9, index:I
    :goto_0
    const-string v0, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryThread start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 154
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 161
    if-eqz v7, :cond_0

    .line 162
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 166
    .local v6, columnIndex:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->contact_name:Ljava/lang/String;

    .line 179
    .end local v6           #columnIndex:I
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_1
    if-eqz v11, :cond_2

    .line 184
    const/4 v11, 0x0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->defaultName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$500(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->defaultName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$500(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->contact_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v1           #contactUri:Landroid/net/Uri;
    .end local v9           #index:I
    :cond_3
    move v9, v0

    .line 148
    goto/16 :goto_0

    .line 171
    .restart local v1       #contactUri:Landroid/net/Uri;
    .restart local v6       #columnIndex:I
    .restart local v9       #index:I
    :cond_4
    const/4 v11, 0x1

    goto :goto_2

    .line 175
    .end local v6           #columnIndex:I
    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 192
    .end local v1           #contactUri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 193
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "BlackList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz v7, :cond_6

    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 198
    .end local v8           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    const-string v0, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryThread end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method
