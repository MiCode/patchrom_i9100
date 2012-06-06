.class Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$1;
.super Ljava/lang/Object;
.source "SingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$1;->this$0:Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference$1;->this$0:Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;->access$000(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V

    .line 87
    return-void
.end method
