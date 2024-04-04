
-- Function: BulletList
-- Description: Converts a bullet list into a randomized multiple-choice question in LaTeX format.
-- Parameters:
--    - el: The bullet list element to be converted.
-- Returns: A pandoc Div element containing the randomized multiple-choice question in LaTeX format.
function BulletList(el)
    -- Create LaTeX code for beginning the randomizechoices environment
    local begin_choices = pandoc.RawInline("latex", "\\begin{randomizechoices}")
    local div = pandoc.Div(begin_choices)
    -- Create LaTeX code for ending the randomizechoices environment
    local end_choices = pandoc.RawInline("latex", "\\end{randomizechoices}")
    -- Create LaTeX code for a choice option
    local choice_latex = pandoc.RawInline("latex", "\\choice ")
    -- Create LaTeX code for a correct choice option
    local correct_choice_latex = pandoc.RawInline("latex", "\\CorrectChoice ")
    
    for _, item in ipairs(el.content) do
        -- Walk through the item and replace all Str of "foo" with "bar"
        local fakeBlock = pandoc.Div(item)
        local isCorrect = false
        fakeBlock = pandoc.walk_block(fakeBlock, {
            Str = function(el)
                if el.text == "(*)" then
                    el.text = ""
                    isCorrect = true
                    return el
                end
                return el
            end
        })
        
        if isCorrect then
            -- Insert the correct choice LaTeX code and the content of the fakeBlock
            div.content:insert(correct_choice_latex)
            div.content:extend(fakeBlock.content)
        else
            -- Insert the choice LaTeX code and the content of the item
            div.content:insert(choice_latex)
            div.content:extend(item)
        end
    end
    
    -- Insert the end_choices LaTeX code
    div.content:insert(end_choices)
    
    return div
end



-- Function: OrderedList
-- Description: Converts a list of items into an ordered list with LaTeX question formatting.
-- Parameters:
--   - el: The list element to be converted.
-- Returns:
--   - div: A pandoc Div element containing the ordered list with LaTeX question formatting.
function OrderedList(el)
    local div = pandoc.Div(pandoc.RawInline("latex", "\\question"))
    for _, item in ipairs(el.content) do
        div.content:extend(item)
    end
    return div
end
