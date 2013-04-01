.class Lcom/sec/android/app/fm/TagsActivity$TagAdapter$1;
.super Ljava/lang/Object;
.source "TagsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/TagsActivity$TagAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter$1;->this$1:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 303
    .local v3, tagCode:I
    iget-object v6, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter$1;->this$1:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    #getter for: Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->holder:Lcom/sec/android/app/fm/TagsActivity$TagHolder;
    invoke-static {v6}, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->access$300(Lcom/sec/android/app/fm/TagsActivity$TagAdapter;)Lcom/sec/android/app/fm/TagsActivity$TagHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/fm/TagsActivity$TagHolder;->info:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, uriString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 306
    .local v0, action:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 308
    :pswitch_0
    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    :cond_0
    const-string v0, "android.intent.action.VIEW"

    .line 327
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 328
    .local v4, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 331
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/fm/TagsActivity$TagAdapter$1;->this$1:Lcom/sec/android/app/fm/TagsActivity$TagAdapter;

    iget-object v6, v6, Lcom/sec/android/app/fm/TagsActivity$TagAdapter;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/fm/TagsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 335
    :catch_1
    move-exception v6

    goto :goto_0

    .line 313
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    const-string v0, "android.intent.action.CALL"

    .line 315
    goto :goto_1

    .line 317
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    const-string v0, "android.intent.action.SENDTO"

    .line 319
    goto :goto_1

    .line 321
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smsto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    const-string v0, "android.intent.action.SENDTO"

    .line 323
    goto :goto_1

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
