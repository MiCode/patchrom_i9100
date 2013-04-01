.class Lcom/sec/android/app/fm/TagsActivity$MusicAdapter$1;
.super Ljava/lang/Object;
.source "TagsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter$1;->this$1:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, search:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.music.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, i:Landroid/content/Intent;
    const-string v3, "all"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter$1;->this$1:Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;

    iget-object v3, v3, Lcom/sec/android/app/fm/TagsActivity$MusicAdapter;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/fm/TagsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 136
    :catch_1
    move-exception v3

    goto :goto_0

    .line 137
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 140
    :catch_3
    move-exception v3

    goto :goto_0
.end method
