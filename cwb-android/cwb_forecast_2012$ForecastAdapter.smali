.class Lorg/cwb/cwb_forecast_2012$ForecastAdapter;
.super Landroid/widget/BaseAdapter;
.source "cwb_forecast_2012.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForecastAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/widget/TextView;

.field private mcontext:Landroid/content/Context;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_forecast_2012;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->this$0:Lorg/cwb/cwb_forecast_2012;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->mcontext:Landroid/content/Context;

    .line 190
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->mLocation:Landroid/widget/TextView;

    .line 192
    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->list:Ljava/util/ArrayList;

    .line 195
    iput-object p2, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->mcontext:Landroid/content/Context;

    .line 196
    iput-object p3, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->list:Ljava/util/ArrayList;

    .line 197
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 200
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 204
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 205
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "ItemId"

    .prologue
    .line 209
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 213
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->mcontext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 214
    .local v0, li:Landroid/view/LayoutInflater;
    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, vi:Landroid/view/View;
    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    .local v1, location:Ljava/lang/String;
    const v3, 0x7f080057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->mLocation:Landroid/widget/TextView;

    .line 217
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-object v2
.end method
