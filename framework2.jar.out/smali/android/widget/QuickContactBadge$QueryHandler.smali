.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 259
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 260
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .local v6, lookupUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, createUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .local v7, trigger:Z
    packed-switch p1, :pswitch_data_0

    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v8, v6}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v8}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;
    invoke-static {v8, v7, v6, v2}, Landroid/widget/QuickContactBadge$Injector;->showQuickContactForStranger(Landroid/widget/QuickContactBadge;ZLandroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    move-result-object v2

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v10, 0x3

    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v11, v11, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v8, v9, v6, v10, v11}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 322
    :cond_2
    :goto_1
    return-void

    .line 272
    .restart local p2
    :pswitch_0
    const/4 v7, 0x1

    .line 273
    :try_start_0
    const-string v8, "tel"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v9, 0x0

    invoke-static {v8, p2, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 277
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 278
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 279
    .local v0, contactId:J
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 281
    goto :goto_0

    .line 286
    .end local v0           #contactId:J
    .end local v5           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    const/4 v7, 0x1

    .line 287
    const-string v8, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v9, 0x0

    invoke-static {v8, p2, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 291
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 292
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 293
    .restart local v0       #contactId:J
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    .restart local v5       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 300
    .end local v0           #contactId:J
    .end local v5           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz p3, :cond_3

    .line 301
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_3
    throw v8

    .line 312
    :cond_4
    if-eqz v2, :cond_2

    .line 315
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    .local v4, intent:Landroid/content/Intent;
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 317
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 319
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v8, "QuickContactBadge"

    const-string v9, "No activity found for intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
