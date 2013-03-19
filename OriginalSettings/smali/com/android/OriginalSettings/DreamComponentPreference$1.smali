.class Lcom/android/settings/DreamComponentPreference$1;
.super Ljava/lang/Object;
.source "DreamComponentPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamComponentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamComponentPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamComponentPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/DreamComponentPreference$1;->this$0:Lcom/android/settings/DreamComponentPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 105
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 106
    .local v0, aia:Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 108
    .local v1, aib:Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 109
    iget-object v4, p0, Lcom/android/settings/DreamComponentPreference$1;->this$0:Lcom/android/settings/DreamComponentPreference;

    #getter for: Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/DreamComponentPreference;->access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 110
    .local v2, sa:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/DreamComponentPreference$1;->this$0:Lcom/android/settings/DreamComponentPreference;

    #getter for: Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/DreamComponentPreference;->access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 121
    .local v3, sb:Ljava/lang/CharSequence;
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/settings/DreamComponentPreference$1;->this$0:Lcom/android/settings/DreamComponentPreference;

    #getter for: Lcom/android/settings/DreamComponentPreference;->sCollator:Ljava/text/Collator;
    invoke-static {v4}, Lcom/android/settings/DreamComponentPreference;->access$100(Lcom/android/settings/DreamComponentPreference;)Ljava/text/Collator;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 105
    .end local v0           #aia:Landroid/content/pm/ApplicationInfo;
    .end local v1           #aib:Landroid/content/pm/ApplicationInfo;
    .end local v2           #sa:Ljava/lang/CharSequence;
    .end local v3           #sb:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 106
    .restart local v0       #aia:Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 112
    .restart local v1       #aib:Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/DreamComponentPreference$1;->this$0:Lcom/android/settings/DreamComponentPreference;

    #getter for: Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/DreamComponentPreference;->access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 113
    .restart local v2       #sa:Ljava/lang/CharSequence;
    if-nez v2, :cond_4

    .line 114
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_5

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 116
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/settings/DreamComponentPreference$1;->this$0:Lcom/android/settings/DreamComponentPreference;

    #getter for: Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/DreamComponentPreference;->access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 117
    .restart local v3       #sb:Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    .line 118
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_6

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_4
    goto :goto_2

    .line 114
    .end local v3           #sb:Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_3

    .line 118
    .restart local v3       #sb:Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/DreamComponentPreference$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
