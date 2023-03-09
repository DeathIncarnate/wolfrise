class Notebook : HUDItem
{
    bool active;
    string[] pages;
    int currentPage;
    int pageWidth;
    int pageHeight;
    
        pageWidth = 640;    // Change this to the width of your game's resolution
        pageHeight = 400;   // Change this to the height of your game's resolution
        active = false;
        currentPage = 0;
        pages = new string[3];  // Replace "3" with the number of pages in your notebook
        pages[0] = "Page 1 content";   // Replace with your own content
        pages[1] = "Page 2 content";
        pages[2] = "Page 3 content";
    
    bool AllowPositioning()
    {
        return false;
    }
    
    bool ShouldDraw()
    {
        return active;
    }
    
    void Draw()
    {
        int x = (pageWidth - Draw.StringWidth(pages[currentPage])) / 2;
        int y = (pageHeight - Draw.StringHeight(pages[currentPage])) / 2;
        Draw.String(x, y, pages[currentPage]);
    }
    
    void PageUp()
    {
        currentPage--;
        if (currentPage < 0)
        {
            currentPage = pages.length - 1;
        }
    }
    
    void PageDown()
    {
        currentPage++;
        if (currentPage >= pages.length)
        {
            currentPage = 0;
        }
    }
    
    override void Tick()
    {
        if (CheckKey("n", KEY_STATUS_DOWN))
        {
            active = !active;
        }
        
        if (active)
        {
            if (CheckKey("up", KEY_STATUS_DOWN))
            {
                PageUp();
            }
            
            if (CheckKey("down", KEY_STATUS_DOWN))
            {
                PageDown();
            }
        }
    }
}