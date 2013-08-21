.class public Lcom/broadcom/bt/app/fm/rx/AudioPathPreference;
.super Lcom/broadcom/bt/app/fm/rx/CyclingPreference;
.source "AudioPathPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/fm/rx/CyclingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/AudioPathPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/AudioPathPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 19
    .local v0, newIndex:I
    add-int/lit8 v0, v0, 0x1

    .line 20
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/AudioPathPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/AudioPathPreference;->setValueIndex(I)V

    .line 23
    return-void
.end method
