/*
Copyright (C) 2005-2012  

Contact: www.ideaconsult.net

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public License
as published by the Free Software Foundation; either version 2.1
of the License, or (at your option) any later version.
All we ask is that proper credit is given for our work, which includes
- but is not limited to - adding the above copyright notice to the beginning
of your source code files, and to any copyright notice that you may distribute
with programs based on this work.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA
*/

package net.idea.ambit.qmrf.swing;

import java.awt.Dimension;

import javax.swing.JComponent;
import javax.swing.JFormattedTextField;

import net.idea.ambit.qmrf.chapters.QMRFSubChapterDate;



public class QMRFSubChapterDateEditor extends QMRFSubChapterTextEditor {
    /**
	 * 
	 */
	private static final long serialVersionUID = -8066777781821570866L;
	public QMRFSubChapterDateEditor(QMRFSubChapterDate chapter, boolean editable) {
        this(chapter,4);
        setEditable(editable);
    }
    public QMRFSubChapterDateEditor(QMRFSubChapterDate chapter, int indent) {
        super(chapter,indent);
    }

    @Override
    protected JComponent createTextComponent() {
    	textPane = null;
    	textField = new JFormattedTextField(); //new SimpleDateFormat("yyyy-M-d"));
    	if (!isEditable()) textField.setBackground(disabled);
    	textField.setEditable(isEditable());
    	textField.addFocusListener(this);
    	textField.setToolTipText(chapter.getWrappedHelp(150));
    	textField.setText(((QMRFSubChapterDate)chapter).getText());
    	Dimension d = new Dimension(Integer.MAX_VALUE,24);
    	textField.setPreferredSize(d);
    	textField.setMaximumSize(d);
        textField.setMinimumSize(new Dimension(256,128));   
        return textField;
    }

	protected JComponent[] createJComponents() {
		textField = new JFormattedTextField(); 
    	if (!isEditable()) textField.setBackground(disabled);
    	textField.setEditable(isEditable());		
    	textField.addFocusListener(this);
    	textField.setToolTipText(chapter.getWrappedHelp(150));
    	textField.setText(((QMRFSubChapterDate)chapter).getText());
    	Dimension d = new Dimension(200,20);
    	textField.setPreferredSize(d);
    	textField.setMaximumSize(d);
        textField.setMinimumSize(d);      	
		return new JComponent[] {textField};
	}    
}
