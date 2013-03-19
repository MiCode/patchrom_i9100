.class public Lcom/android/settings/DreamComponentPreference$DreamListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DreamComponentPreference.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamComponentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DreamListAdapter"
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/DreamComponentPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/DreamComponentPreference;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->this$0:Lcom/android/settings/DreamComponentPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, choosy:Landroid/content/Intent;
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->results:Ljava/util/ArrayList;

    .line 142
    iget-object v1, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->results:Ljava/util/ArrayList;

    #getter for: Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/settings/DreamComponentPreference;->access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v1, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->results:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/settings/DreamComponentPreference;->sResolveInfoComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 175
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 196
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 199
    .local v1, row:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 200
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->this$0:Lcom/android/settings/DreamComponentPreference;

    #getter for: Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/DreamComponentPreference;->access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v2, 0x7f0b0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->this$0:Lcom/android/settings/DreamComponentPreference;

    #getter for: Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/DreamComponentPreference;->access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    return-object v1

    .line 196
    .end local v0           #ri:Landroid/content/pm/ResolveInfo;
    .end local v1           #row:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04005c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
