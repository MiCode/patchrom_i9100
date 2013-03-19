.class public Lcom/sec/android/glview/RadioButtonController;
.super Ljava/lang/Object;
.source "RadioButtonController.java"


# instance fields
.field private mButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/glview/TwGLRadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/RadioButtonController;->mButtons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addButton(Lcom/sec/android/glview/TwGLRadioButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/glview/RadioButtonController;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/sec/android/glview/RadioButtonController;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLRadioButton;->setRadioButtonId(I)V

    .line 40
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/glview/RadioButtonController;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method

.method public getSelectedButton()Lcom/sec/android/glview/TwGLRadioButton;
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/sec/android/glview/RadioButtonController;->mButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLRadioButton;

    .line 49
    .local v0, button:Lcom/sec/android/glview/TwGLRadioButton;
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRadioButton;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    .end local v0           #button:Lcom/sec/android/glview/TwGLRadioButton;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLRadioButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/sec/android/glview/RadioButtonController;->mButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLRadioButton;

    .line 69
    .local v0, btn:Lcom/sec/android/glview/TwGLRadioButton;
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLRadioButton;->getRadioButtonId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLRadioButton;->getRadioButtonId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLRadioButton;->setSelected(Z)V

    goto :goto_0

    .line 73
    .end local v0           #btn:Lcom/sec/android/glview/TwGLRadioButton;
    :cond_1
    return-void
.end method
